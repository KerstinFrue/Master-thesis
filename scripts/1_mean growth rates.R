setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

# modern data -------------------------------------------------------------


#library(chronosphere)
#ct<-fetch("CoralTraitDB")
#ct_growthrate<- subset(ct, trait_name=="Growth rate")
#ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)
#library(readr)
#write.csv(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates//modern growth rates.csv", row.names=FALSE, quote=F)



# Growth rate data ----------------------------------------------
# allmeandata
ol.mio.mo<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates Oligocene Miocene Modern.csv")

# Oligocene and Miocene data only
ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates per specimen Oligocene Miocene.csv")
ol <- subset(ol.mio, time=="Oligocene")
#slope: Favites data (1 specimen, only 2 measurements) was left out (very big growth rate)

mio <- subset(ol.mio, time=="Miocene")














#1 TESTS FOR NORMALITY AND VARIANCE (OF MEANS)

#-------------------------------------------------------------------------------------------------------------------------------------


# Oligocene growth data ---------------------------------------------------


#normal distribution test for data
shapiro.test(ol$mean.growth)        # only data set with normal distribution....



# Oligocene reef section ------------------------------------------------


class(ol$reef.section)
summary(ol)

#--> Kruskal-test, whether the means vary between the Oligocene reef sections???
kruskal.test(ol$mean.growth~ol$reef.section)


#Null hypothesis was, that the values don't vary much
#if the p value is smaller than the commonly chosen significance level of 0,05,
#the null hypothesis is rejected, as in this case. The mean growth rates vary highly between the different times, as you can also see in the graph




#library(car)
#leveneTest(ol$mean.growth ~ ol$reef.section)


an.ol.section<-aov(ol$mean.growth ~ ol$reef.section)
summary(an.ol.section)
plot(an.ol.section, 1)






# Oligocene genera --------------------------------------------------------


kruskal.test(ol$mean.growth ~ ol$genus)


an.ol.genus<-aov(ol$mean.growth ~ ol$genus)
summary(an.ol.genus)
plot(an.ol.genus, 1)

#-------------------------------------------------------------------------------------------------------------------------------------



# Miocene growth data -----------------------------------------------------



shapiro.test(mio$mean.growth)

kruskal.test(mio$mean.growth ~ mio$reef.section)

an.mio.section<-aov(mio$mean.growth ~ mio$reef.section)
summary(an.mio.section)
plot(an.mio.section, 1)

#---------------------------------------------------------------------------------------------------------------------------------------


# Oligocene vs. Miocene reef section --------------------------------------



shapiro.test(ol.mio$mean.growth)


kruskal.test(ol.mio$mean.growth ~  ol.mio$reef.section)

#ANOVA

#growth rate ~ reef.section
an.ol.mio.section<-aov(ol.mio$mean.growth ~ ol.mio$reef.section)
summary(an.ol.mio.section)
plot(an.ol.mio.section, 1)



#--------------------------------------------------------------------------------------------------------------------------------------


# Oligocene Porites vs. Miocene Porites -----------------------------------



#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!very useful function!!!!!!!!!!!!!!!!!!!!!!!!!
summary (ol.mio)

shapiro.test(ol.mio$mean.growth[ol.mio$genus=="Porites"])


kruskal.test(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])



#ANOVA

an.ol.mio.genus<-aov(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$genus[ol.mio$genus=="Porites"])
summary(an.ol.mio.genus)
plot(an.ol.mio.genus, 1)

#---------------------------------------------------------------------------------------------------------------------------------------


# Oligocene vs. Miocene vs. modern ----------------------------------------



shapiro.test(ol.mio.mo$mean.growth)

kruskal.test(ol.mio.mo$mean.growth ~ ol.mio.mo$time)

#ANOVA
an.ol.mio.mo<-aov(ol.mio.mo$mean.growth ~ ol.mio.mo$time)
summary(an.ol.mio.mo)
plot(an.ol.mio.mo, 1)





















#######################################################################################################################################
#2 PLOTS

#--------------------------------------------------------------------------
# 1.0 Oligocene -----------------------------------------------------------

# 1.1 Comparison of growth rate means between reef sections ---------------
#--------------------------------------------------------------------------

#correcting the order for the x axis
ol$reef.section<- factor(ol$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))

#color vector for distinguishing groups
cols1 <- c("cadetblue1", "cyan4", "olivedrab3", "coral1")


#boxplot 12 3 16 8
boxplot(ol$mean.growth~ol$reef.section,
        #main = "Oligocene: comparison between reef sections",
        col=cols1, xlab = "reef section", ylab= "mean growth rate (mm / year)",
        names = c("back reef", "reef flat", "reef front ", "proximal slope"))




# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the back reef reef front, then proximal slope and 4. reef flat
#--> does agree with previous studies where it is said that the corals grow best in the back reef!



# Getting boxplot statistics (boxplot data: Min, First Quartile, Median, Third Quartile, Maximum)

#summary1<-boxplot(ol$mean.growth~ol$reef.section,
        #main = "Oligocene: comparison between reef sections",
        #col=cols1, xlab = "reef section", ylab= "mean growth rate (mm / year)",
        #names = c("back reef", "reef flat", "reef front ", "proximal slope"))$stats

#summary1






#--------------------------------------------------------------------------------------------------
# 1.2 comparison of growth rate means between genera ----------------------------------------------
#--------------------------------------------------------------------------------------------------

#correcting the order for the x axis
ol$genus<- factor(ol$genus, levels = c("Porites", "Actinacis", "Poriticae", "Tarbellastraea", "Pavona"))

cols2<-c("coral","coral1","coral2", "coral4", "coral1")

#boxplot 10 6 17 2 2
boxplot(ol$mean.growth~ol$genus,
        #main = "Oligocene: comparison between genera",
        col=cols2, xlab = "genus", ylab = "mean growth rate (mm / year)", names =c("Porites", "Actinacis", "Poriticae", "Tarbellastraea", "Pavona"))






#--------------------------------------------------------------------------------------------

# 2.0 Miocene --------------------------------------------------------------------------------

# 2.1 Comparison of growth rate means between reef sections -----------------------------------
#----------------------------------------------------------------------------------------------

#correcting the order for the x axis
mio$reef.section<- factor(mio$reef.section, levels = c("back reef", "reef front", "proximal slope"))

cols3 <- c("cadetblue1", "olivedrab3", "coral1")

#boxplot 6 10 5
boxplot(mio$mean.growth~mio$reef.section,
        #main = "Miocene: comparison between reef sections",
        xlab = "reef section", ylab= "mean growth rate (mm / year)", col=cols3,
        names = c("back reef", "reef front ", "proximal slope"))




# RESULTS -----------------------------------------------------------------
#reef front showas highest growth rates, then proximal slope and then back reef
#--> have a look at the data, back reef data was probably not good ()





#-------------------------------------------------------------------------------------------------
# 2.2 Comparison of growth rate means between genera ----------------------------------------------
#makes no sense (ONLY Porites)
#--------------------------------------------------------------------------------------------------


#growth rate ~ genus                                DOES NOT MAKE SENSE (only PORITES)
#an.mio.genus<-aov(mio$mean.growth ~ mio$genus)
#summary(an.mio.genus)








#---------------------------------------------------------------------------------------
# 3 Oligocene vs. Miocene ------------------------------

# 3.1 Comparison of growth rate between Oligocene and Miocene: reef section ------------
#---------------------------------------------------------------------------------------

#correcting the order for the x axis
ol.mio$time<- factor(ol.mio$time, levels = c("Oligocene", "Miocene"))
ol.mio$reef.section<- factor(ol.mio$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))


#color vector for distinguishing groups
cols <- c("cadetblue1", "cadetblue1", "cyan4", "cyan4", "olivedrab3", "olivedrab3", "coral1", "coral1")


#boxplot 12 6 3 0 16 10 8 5
#x11()
#svg("ol.mio.reefsections12.svg", w=8, h=6)
boxplot(ol.mio$mean.growth ~  ol.mio$time + ol.mio$reef.section, col=cols,
        #main = "Comparison between Oligocene and Miocene: reef sections",
        names = c("Oligocene back reef","Miocene back reef", "Oligocene reef flat", "Miocene reef flat",
                  "Oligocene reef front", "Miocene reef front", "Oligocene proximal slope", "Miocene proximal slope"),
        xlab = "time & reef section", ylab= "mean growth rate (mm / year)", cex.main=1.0, cex.lab=1.0, cex.axis=1.0)
#dev.off()



#option to show several graphs in one window
#windows(h=8, w=6)
#op <- par(mfrow=c(2,1))
#boxplot(ol$mean.growth ~ ol$reef.section)
#boxplot(mio$mean.growth ~ mio$reef.section)
#par(op)


# RESULTS -----------------------------------------------------------------
#growth rate is generally higher in the Oligocene throughout all sections
#no data of reef flat for Miocene though, which is the reef section with the lower growth rates for the Oligocene
#this location could also have been just a channel with sediment transport
#look at line transect data if there is any !




#----------------------------------------------------------------------------------
# 3.2 Comparison of growth rate between Oligocene and Miocene: PORITES ------------
#----------------------------------------------------------------------------------

#correcting the order for the x axis
ol.mio$time<- factor(ol.mio$time, levels = c("Oligocene", "Miocene"))

cols4<- c("goldenrod1","yellow")

#boxplot 11 21
boxplot(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"],
        #main = "Comparison between Oligocene and Miocene: Porites",
        col=cols4, names=c("Oligocene", "Miocene"), xlab = "time", ylab= "mean growth rate (mm / year)")





--------------------------------------------------------------------------------------------------------------------
# 4 Comparison of growth rates Oligocene vs. Miocene vs. modern ----------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------


#correcting the order for the x axis
ol.mio.mo$time<- factor(ol.mio.mo$time, levels = c("Oligocene", "Miocene", "modern"))

cols5<- c("goldenrod1","yellow", "seagreen2")

#boxplot 39 21 429
boxplot(ol.mio.mo$mean.growth ~ ol.mio.mo$time,
        #main = "Comparison between Oligocene, Miocene and modern",
        xlab = "time", ylab= "mean growth rate (mm / year)", names=c("Oligocene", "Miocene", "Modern"),
        col=cols5, outline=FALSE)





###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though













#################################################################################################################################################


#3 Comparison of Actinacis and Porites in Oligocene reef front --------------

#means of growth rates of certain genera
mean(ol$mean.growth[ol$genus=="Pavona"])
mean(ol$mean.growth[ol$genus=="Porites"])

# RESULTS ---------------------------------------------------------------
#Porites and Poriticae do not show similar growth --> should not fuse them!



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


#Kruskall-Wallis test
kruskal.test(ol.front$mean.growth~ol.front$genus)

#ANOVA

an.ol.poriticae<-aov(ol.front$mean.growth ~ ol.front$genus)
summary(an.ol.section)
plot(an.ol.poriticae, 1)














# 4_standard errors -------------------------------------------------------

#oligocene se per reef section

se <- tapply(ol$mean.growth, ol$reef.section,
             function(x) sd(x)/sqrt(length(x)))
str(se)
se <- as.data.frame(se)

#se$reef.section <- rownames(se)   #what is this good for?
#se <- merge(reef.section, se)
            
# Standard error bars

#c95 <- 1.96 * se$se

#arrows(x0=m$mid, y0=m$m - c95, y1=m$m + c95, code = 3, angle=90, length=0, col = cols)



#-----------------------------------------------------------------------------------------------------------------------


#Miocene se per reef section

se1 <- tapply(mio$mean.growth, mio$reef.section, function(x) sd(x)/sqrt(length(x)))
str(se1)
se1 <- as.data.frame(se1)

#se1$reef.section <- rownames(se1)   #what is this good for?
#se1 <- merge(reef.section, se1)

# Standard error bars

#c95 <- 1.96 * se1$se1

#arrows(x0=m$mid, y0=m$m - c95, y1=m$m + c95, code = 3, angle=90, length=0, col = cols)


#-----------------------------------------------------------------------------------------------------------------------

#oligocene se per genus

se2 <- tapply(ol$mean.growth, ol$genus,
             function(x) sd(x)/sqrt(length(x)))
str(se2)
se2 <- as.data.frame(se2)

#se2$reef.section <- rownames(se2)   #what is this good for?
#se2 <- merge(reef.section, se2)

# Standard error bars

#c95 <- 1.96 * se2$se2

#arrows(x0=m$mid, y0=m$m - c95, y1=m$m + c95, code = 3, angle=90, length=0, col = cols)


#-----------------------------------------------------------------------------------------------------------------------

#Miocene se per genus

se3 <- tapply(mio$mean.growth, mio$genus,
              function(x) sd(x)/sqrt(length(x)))
str(se3)
se3 <- as.data.frame(se3)

#se3$reef.section <- rownames(se3)   #what is this good for?
#se3 <- merge(reef.section, se3)

# Standard error bars

#c95 <- 1.96 * se3$se3

#arrows(x0=m$mid, y0=m$m - c95, y1=m$m + c95, code = 3, angle=90, length=0, col = cols)
