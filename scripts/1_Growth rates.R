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
# alldata
ol.mio.mo<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates Oligocene Miocene Modern.csv")

# Oligocene and Miocene data only
ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/mean growth rates Oligocene Miocene.csv")
ol <- subset(ol.mio, time=="Oligocene")
#slope: Favites data (1 specimen, only 2 measurements) was left out (very big growth rate)

mio <- subset(ol.mio, time=="Miocene")














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

#Test geht nicht? --> Gruppen mio?ssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(ol$mean.growth~ol$reef.section)

#--> Kruskal-test, whether the means vary between the Oligocene reef sections???
kruskal.test(ol$mean.growth~ol$reef.section)



# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the back reef reef front, then proximal slope and 4. reef flat
#--> does agree with previous studies where it is said that the corals grow best in the back reef!



#Kruskal-test: p-value 0.0184, is SMALLER than 0,05--> ??? PROBLEM







#--------------------------------------------------------------------------------------------------
# 1.2 comparison of growth rate means between genera ----------------------------------------------
#--------------------------------------------------------------------------------------------------

#correcting the order for the x axis
ol$genus<- factor(ol$genus, levels = c("Porites", "Actinacis", "Poritid", "Tarbellastraea", "Pavona"))

cols2<-c("coral","coral1","coral2", "coral4", "coral1")

#boxplot 10 6 17 2 2
boxplot(ol$mean.growth~ol$genus,
        #main = "Oligocene: comparison between genera",
        col=cols2, xlab = "genus", ylab = "mean growth rate (mm / year)", names =c("Porites", "Actinacis", "Poritid", "Tarbellastraea", "Pavona"))

#Test geht nicht?  --> Gruppen mioüssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(ol$mean.growth~ol$reef.section)

kruskal.test(ol$mean.growth ~ ol$genus)


#means of growth rates of certain genera
mean(ol$mean.growth[ol$genus=="Pavona"])
mean(ol$mean.growth[ol$genus=="Porites"])

# RESULTS ---------------------------------------------------------------
#Porites and Poritids do not show similar growth --> should not fuse them!
#Kruskal-test: p-value 0.02349, is SMALLER than 0,05--> ??? PROBLEM












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

#Test geht nicht?  --> Gruppen mioüssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(ol$mean.growth ~ ol$reef.section)

kruskal.test(mio$mean.growth ~ mio$reef.section)



# RESULTS -----------------------------------------------------------------
#reef front showas highest growth rates, then proximal slope and then back reef
#--> have a look at the data, back reef data was probably not good ()
#Kruskal-test: p-value 0.1719, is BIGGER than 0,05--> ??? PROBLEM





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


#boxplot 12 6 3 0 16 10 8 5
#x11()
svg("ol.mio.reefsections12.svg", w=8, h=6)
boxplot(ol.mio$mean.growth ~  ol.mio$time + ol.mio$reef.section, col=cols,
        #main = "Comparison between Oligocene and Miocene: reef sections",
        names = c("Oligocene back reef","Miocene back reef", "Oligocene reef flat", "Miocene reef flat",
                  "Oligocene reef front", "Miocene reef front", "Oligocene proximal slope", "Miocene proximal slope"),
        xlab = "time & reef section", ylab= "mean growth rate (mm / year)", cex.main=1.0, cex.lab=1.0, cex.axis=1.0)
dev.off()



#option to show several graphs in one window
#windows(h=8, w=6)
#op <- par(mfrow=c(2,1))
#boxplot(ol$mean.growth ~ ol$reef.section)
#boxplot(mio$mean.growth ~ mio$reef.section)
#par(op)


#Test does not work, see notes above
#wilcox.test()

kruskal.test(ol.mio$mean.growth ~  ol.mio$reef.section)

# RESULTS -----------------------------------------------------------------
#growth rate is generally higher in the Oligocene throughout all sections
#no data of reef flat for Miocene though, which is the reef section with the lower growth rates for the Oligocene
#this location could also have been just a channel with sediment transport
#look at line transect data if there is any
#Kruskal test: p value is 0,09609 is BIGGER than 0,05 --> ??? PROBLEM








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



wilcox.test(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])

#kruskal.test(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"])

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!very useful function!!!!!!!!!!!!!!!!!!!!!!!!!
#summary (ol.mio)

# RESULTS -----------------------------------------------------------------
#Wilcox test: p value is 1,504 e-06 is way SMALLER than 0,05 --> ??? PROBLEM









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


#geht nicht, siehe oben
#wilcox.test(ol.mio.mo$mean.growth~ol.mio.mo$time)


kruskal.test(ol.mio.mo$mean.growth ~ ol.mio.mo$time)




###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though

#Kruskal Test: p value 3.873e-05 is EXTREMELY SMALL --> ??? Null hypothesis was, that the values don't vary much
#if the p value is smaller than the commonly chosen significance level of 0,05,
#the null hypothesis is rejected, as in this case. The mean growth rates vary highly between the different times, as you can also see in the graph









# 5 ANOVA tests -------------------------------------------------------------

#Oligocene
#5.1 growth rate ~ reef section
an.ol.section<-aov(ol$mean.growth ~ ol$reef.section)
summary(an.ol.section)



# 5.2 growth rate ~ genus
an.ol.genus<-aov(ol$mean.growth ~ ol$genus)
summary(an.ol.genus)


#--------------------------------------------------------------------------


# 5.3 Miocene
#growth rate ~ reef section
an.mio.section<-aov(mio$mean.growth ~ mio$reef.section)
summary(an.mio.section)


#growth rate ~ genus                                DOES NOT MAKE SENSE (only PORITES)
#an.mio.genus<-aov(mio$mean.growth ~ mio$genus)
#summary(an.mio.genus)

