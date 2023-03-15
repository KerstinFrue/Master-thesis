setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

# modern data -------------------------------------------------------------


library(chronosphere)
ct<-fetch("CoralTraitDB")
ct_growthrate<- subset(ct, trait_name=="Growth rate")
ct_modern_mean<-subset(ct_growthrate, value_type=="mean")
ct_modern_mean_year<-subset(ct_modern_mean, standard_unit=="mm yr^-1")
ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)
library(readr)
write.csv2(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates//modern growth rates.csv", row.names=FALSE, quote=F)


# Growth rate data ----------------------------------------------
# all mean growth rate data Oligocene, Miocene, modern
ol.mio.mo<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates Oligocene Miocene Modern.csv")

# Oligocene and Miocene data only
ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates per specimen Oligocene Miocene.csv")

#subestting further
ol <- subset(ol.mio, time=="Oligocene")

mio <- subset(ol.mio, time=="Miocene")













#1 TESTS FOR NORMALITY AND VARIANCE (OF MEANS)

#-------------------------------------------------------------------------------------------------------------------------------------


# Oligocene growth rate data ---------------------------------------------------


#normal distribution test for Oligocene data
shapiro.test(ol$mean.growth)






# Oligocene growth rate among reef sections ------------------------------------------------


#Kruskal-Wallis-test

kruskal.test(ol$mean.growth~ol$reef.section)


#ANOVA

an.ol.section<-aov(ol$mean.growth ~ ol$reef.section)
summary(an.ol.section)
plot(an.ol.section, 1)


#post-hoc test

TukeyHSD(an.ol.section, conf.level = .95)





# Oligocene growth rate among genera --------------------------------------------------------

#Kruskal-Wallis-test

kruskal.test(ol$mean.growth ~ ol$genus)

#ANOVA

an.ol.genus<-aov(ol$mean.growth ~ ol$genus)
summary(an.ol.genus)
plot(an.ol.genus, 1)

#-------------------------------------------------------------------------------------------------------------------------------------



# Miocene growth rate data -----------------------------------------------------


#test for normality of data

shapiro.test(mio$mean.growth)


#Kruskal-Wallis-test

kruskal.test(mio$mean.growth ~ mio$reef.section)

#ANOVA
an.mio.section<-aov(mio$mean.growth ~ mio$reef.section)
summary(an.mio.section)
plot(an.mio.section, 1)

#---------------------------------------------------------------------------------------------------------------------------------------


# Oligocene vs. Miocene reef section --------------------------------------


#test for normality of data

shapiro.test(ol.mio$mean.growth)


#Kruskal-Wallis-test

kruskal.test(ol.mio$mean.growth ~  ol.mio$reef.section)


#ANOVA

an.ol.mio.section<-aov(ol.mio$mean.growth ~ ol.mio$reef.section)
summary(an.ol.mio.section)
plot(an.ol.mio.section, 1)


#--------------------------------------------------------------------------------------------------------------------------------------


# Oligocene Porites vs. Miocene Porites -----------------------------------


#test for normality of data

shapiro.test(ol.mio$mean.growth[ol.mio$genus=="Porites"])


#Kruskal-Wallis-test

kruskal.test(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])


#ANOVA

an.ol.mio.genus<-aov(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])
summary(an.ol.mio.genus)
plot(an.ol.mio.genus, 1)


#post-hoc test

t.test(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])

#---------------------------------------------------------------------------------------------------------------------------------------


# Oligocene vs. Miocene vs. modern ----------------------------------------

#test for normality of data

shapiro.test(ol.mio.mo$mean.growth)


#Kruskal-Wallis-test

kruskal.test(ol.mio.mo$mean.growth ~ ol.mio.mo$time)


#ANOVA

an.ol.mio.mo<-aov(ol.mio.mo$mean.growth ~ ol.mio.mo$time)
summary(an.ol.mio.mo)
plot(an.ol.mio.mo, 1)


#post-hoc test

TukeyHSD(an.ol.mio.mo)







#######################################################################################################################################
#2 PLOTS

#--------------------------------------------------------------------------
# 1.0 Oligocene -----------------------------------------------------------

# 1.1 Comparison of growth rate means among reef sections ---------------
#--------------------------------------------------------------------------

#correcting the order for the x axis
ol$reef.section<- factor(ol$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))

#color vector for distinguishing groups
cols1 <- c("cadetblue1", "cyan4", "olivedrab3", "coral1")


#boxplot
boxplot(ol$mean.growth~ol$reef.section,
        #main = "Oligocene: comparison between reef sections",
        col=cols1, xlab = "reef section", ylab= "mean growth rate (mm / year)",
        names = c("back reef", "reef flat", "reef front ", "proximal slope")) #$stats




#--------------------------------------------------------------------------------------------------
# 1.2 Comparison of growth rate means among genera ----------------------------------------------
#--------------------------------------------------------------------------------------------------

#correcting the order for the x axis
ol$genus<- factor(ol$genus, levels = c("Porites", "Actinacis", "Poriticae", "Tarbellastraea", "Pavona"))

cols2<-c("coral","coral1","coral2", "coral4", "coral1")

#boxplot
boxplot(ol$mean.growth~ol$genus,
        #main = "Oligocene: comparison between genera",
        col=cols2, xlab = "genus", ylab = "mean growth rate (mm / year)",
        names =c("Porites", "Actinacis", "Poriticae", "Tarbellastraea", "Pavona"))$stats





#--------------------------------------------------------------------------------------------

# 2.0 Miocene --------------------------------------------------------------------------------

# 2.1 Comparison of growth rate means among reef sections -----------------------------------
#----------------------------------------------------------------------------------------------

#correcting the order for the x axis
mio$reef.section<- factor(mio$reef.section, levels = c("back reef", "reef front", "proximal slope"))

cols3 <- c("cadetblue1", "olivedrab3", "coral1")

#boxplot
boxplot(mio$mean.growth~mio$reef.section,
        #main = "Miocene: comparison between reef sections",
        xlab = "reef section", ylab= "mean growth rate (mm / year)", col=cols3,
        names = c("back reef", "reef front ", "proximal slope")) $stats


#-------------------------------------------------------------------------------------------------
# 2.2 Comparison of growth rate means between genera ----------------------------------------------
#makes no sense (ONLY Porites)
#--------------------------------------------------------------------------------------------------




#---------------------------------------------------------------------------------------
# 3 Oligocene vs. Miocene ------------------------------

# 3.1 Comparison of growth rate between Oligocene and Miocene: reef section ------------
#---------------------------------------------------------------------------------------

#correcting the order for the x axis
ol.mio$time<- factor(ol.mio$time, levels = c("Oligocene", "Miocene"))
ol.mio$reef.section<- factor(ol.mio$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))


#color vector for distinguishing groups
cols <- c("cadetblue1", "cadetblue1", "cyan4", "cyan4", "olivedrab3", "olivedrab3", "coral1", "coral1")


#boxplot
#x11()
#svg("ol.mio.reefsections12.svg", w=8, h=6)
boxplot(ol.mio$mean.growth ~  ol.mio$time + ol.mio$reef.section, col=cols,
        #main = "Comparison between Oligocene and Miocene: reef sections",
        names = c("Oligocene back reef","Miocene back reef", "Oligocene reef flat", "Miocene reef flat",
                  "Oligocene reef front", "Miocene reef front", "Oligocene proximal slope", "Miocene proximal slope"),
        xlab = "time & reef section", ylab= "mean growth rate (mm / year)", cex.main=1.0, cex.lab=1.0, cex.axis=1.0) $stats
#dev.off()




#----------------------------------------------------------------------------------
# 3.2 Comparison of growth rate between Oligocene and Miocene: PORITES ------------
#----------------------------------------------------------------------------------

#correcting the order for the x axis
ol.mio$time<- factor(ol.mio$time, levels = c("Oligocene", "Miocene"))

cols4<- c("goldenrod1","yellow")

#boxplot
boxplot(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"],
        #main = "Comparison between Oligocene and Miocene: Porites",
        col=cols4, names=c("Oligocene", "Miocene"), xlab = "time", ylab= "mean growth rate (mm / year)") $stats

mean(ol.mio$mean.growth[ol.mio$genus=="Porites"])
mean(mio$mean.growth)

--------------------------------------------------------------------------------------------------------------------
# 4 Comparison of growth rates Oligocene vs. Miocene vs. modern ----------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------


#correcting the order for the x axis
ol.mio.mo$time<- factor(ol.mio.mo$time, levels = c("Oligocene", "Miocene", "modern"))

cols5<- c("goldenrod1","yellow", "seagreen2")

#boxplot
boxplot(ol.mio.mo$mean.growth ~ ol.mio.mo$time,
        #main = "Comparison between Oligocene, Miocene and modern",
        xlab = "time", ylab= "mean growth rate (mm / year)", names=c("Oligocene", "Miocene", "Modern"),
        col=cols5, outline=FALSE)$stats






#################################################################################################################################################


#3 Comparison of Actinacis and Porites in Oligocene reef front --------------

#means of growth rates of certain genera
mean(ol$mean.growth[ol$genus=="Pavona"])
mean(ol$mean.growth[ol$genus=="Porites"])


# subsetting for Oligocene reef front data
ol.front<-subset(ol, reef.section=="reef front")
ol.front<-ol.front[-13,] #delete Astreopora data

#correcting the order for the x axis
ol.front$genus<- factor(ol.front$genus, levels = c("Porites", "Actinacis", "Poriticae"))

na.omit(ol.front)
cols6<-c("coral","coral1", "coral3")

#boxplot
boxplot(ol.front$mean.growth ~ol.front$genus,
        #main = "Oligocene: comparison between genera of the Oligocene reef front",
        col=cols6, xlab = "genus", ylab = "mean growth rate (mm / year)", names =c("Porites", "Actinacis", "Poriticae"))


#Kruskal-Wallis test
kruskal.test(ol.front$mean.growth~ol.front$genus)

#ANOVA

an.ol.poriticae<-aov(ol.front$mean.growth ~ ol.front$genus)
summary(an.ol.section)
plot(an.ol.poriticae, 1)





# 4_standard errors -------------------------------------------------------

#oligocene SE per reef section

se <- tapply(ol$mean.growth, ol$reef.section,
             function(x) sd(x)/sqrt(length(x)))
str(se)
se <- as.data.frame(se)


#-----------------------------------------------------------------------------------------------------------------------


#Miocene SE per reef section

se1 <- tapply(mio$mean.growth, mio$reef.section, function(x) sd(x)/sqrt(length(x)))
str(se1)
se1 <- as.data.frame(se1)

 
#-----------------------------------------------------------------------------------------------------------------------

#oligocene se per genus

se2 <- tapply(ol$mean.growth, ol$genus,
             function(x) sd(x)/sqrt(length(x)))
str(se2)
se2 <- as.data.frame(se2)


#-----------------------------------------------------------------------------------------------------------------------

#Miocene se per genus

se3 <- tapply(mio$mean.growth, mio$genus,
              function(x) sd(x)/sqrt(length(x)))
str(se3)
se3 <- as.data.frame(se3)

