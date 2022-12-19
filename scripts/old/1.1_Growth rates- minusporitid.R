setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

# modern data -------------------------------------------------------------


#library(chronosphere)
#ct<-fetch("CoralTraitDB")
#ct_growthrate<- subset(ct, trait_name=="Growth rate")
#ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)
#library(readr)
#write.csv(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/data/growth rates//modern growth rates.csv", row.names=FALSE, quote=F)

modern.data<-read.csv("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates modern.csv")



# Oligocene and Miocene data ----------------------------------------------

ol.mio.mp<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene minus poritid.csv")
o.mp <- subset(ol.mio.mp, time=="Oligocene")
#slope: Favites data (1 specimen, only 2 measurements) was left out (very big growth rate)

m.mp <- subset(ol.mio.mp, time=="Miocene")

#alldata
ol.mio.mo.mp<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene modern minus poritid.csv")















#--------------------------------------------------------------------------
# 1.0 Oligocene -----------------------------------------------------------

# 1.1 Comparison of growth rate means between reef sections ---------------
#--------------------------------------------------------------------------

#correcting the order for the x axis
o.mp$reef.section<- factor(o.mp$reef.section, levels = c("back reef", "reef front", "proximal slope"))

#color vector for distinguishing groups
cols1 <- c("cadetblue1", "olivedrab3", "goldenrod1")


#boxplot
boxplot(o.mp$mean.growth~o.mp$reef.section,
        #main = "Oligocene: comparison between reef sections",
        col=cols1, xlab = "reef section", ylab= "mean growth rate (mm / year)",
        names = c("back reef (12)", "reef front (9)", "proximal slope (1)"))

#Test geht nicht? --> Gruppen m.müssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o.mp$mean.growth~o.mp$reef.section)

#--> Kruskal-test, whether the means vary between the Oligocene reef sections???
kruskal.test(o.mp$mean.growth~o.mp$reef.section)



# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the back reef reef front, then proximal slope and 4. reef flat
#--> does agree with previous studies where it is said that the corals grow best in the back reef!



#Kruskal-test: p-value 0.0184, is SMALLER than 0,05--> ??? PROBLEM







#--------------------------------------------------------------------------------------------------
# 1.2 comparison of growth rate means between genera ----------------------------------------------
#--------------------------------------------------------------------------------------------------

#correcting the order for the x axis
o.mp$genus<- factor(o.mp$genus, levels = c("Porites", "Actinacis", "Tarbellastraea", "Pavona?"))

cols2<-c("coral","coral1","coral3","coral4")

#boxplot
boxplot(o.mp$mean.growth~o.mp$genus,
        #main = "Oligocene: comparison between genera",
        col=cols2, xlab = "genus", ylab = "mean growth rate (mm / year)", names =c("Porites (10)", "Actinacis (6)", "Tarbellastraea (2)", "Pavona? (2)"))

#Test geht nicht?  --> Gruppen m.müssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o.mp$mean.growth~o.mp$reef.section)

kruskal.test(o.mp$mean.growth ~ o.mp$genus)



# RESULTS ---------------------------------------------------------------
#Porites and Poritids do not show similar growth --> should not fuse them!
#Kruskal-test: p-value 0.2349, is SMALLER than 0,05--> ??? PROBLEM












#--------------------------------------------------------------------------------------------

# 2.0 Miocene --------------------------------------------------------------------------------

# 2.1 Comparison of growth rate means between reef sections -----------------------------------
#----------------------------------------------------------------------------------------------

#correcting the order for the x axis
m.mp$reef.section<- factor(m.mp$reef.section, levels = c("back reef", "reef front", "proximal slope"))

cols3 <- c("cyan4", "olivedrab", "yellow")

#boxplot 
boxplot(m.mp$mean.growth~m.mp$reef.section,
        #main = "Miocene: comparison between reef sections",
        xlab = "reef section", ylab= "mean growth rate (mm / year)", col=cols3,
        names = c("back reef (6)", "reef front (10)", "proximal slope (5)"))

#Test geht nicht?  --> Gruppen m.mpüssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o.mp$mean.growth ~ o.mp$reef.section)

kruskal.test(m.mp$mean.growth ~ m.mp$reef.section)



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
ol.mio.mp$time<- factor(ol.mio.mp$time, levels = c("Oligocene", "Miocene"))
ol.mio.mp$reef.section<- factor(ol.mio.mp$reef.section, levels = c("back reef", "reef front", "proximal slope"))


#color vector for distinguishing groups
cols <- c("cadetblue1", "cadetblue1", "olivedrab3", "olivedrab", "yellow", "goldenrod1")



#x11()
#svg("ol.mio.mp.reefsections.mp.svg", w=8, h=6)
boxplot(ol.mio.mp$mean.growth ~  ol.mio.mp$time + ol.mio.mp$reef.section, col=cols,
        #main = "Comparison between Oligocene and Miocene: reef sections",
        names = c("Oligocene back reef (12)","Miocene back reef (6)",
                  "Oligocene reef front (9)", "Miocene reef front (10)", "Oligocene proximal slope (1)", "Miocene proximal slope (5)"),
        xlab = "time : reef section", ylab= "mean growth rate (mm / year)", cex.main=1.0, cex.lab=1.0, cex.axis=0.5)
#dev.off()



#option to show several graphs in one window
#windows(h=8, w=6)
#op <- par(mfrow=c(2,1))
#boxplot(o.mp$mean.growth ~ o.mp$reef.section)
#boxplot(m.mp$mean.growth ~ m.mp$reef.section)
#par(op)


#Test does not work, see notes above
#wilcox.test()

kruskal.test(ol.mio.mp$mean.growth ~  ol.mio.mp$reef.section)

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
ol.mio.mp$time<- factor(ol.mio.mp$time, levels = c("Oligocene", "Miocene"))

cols4<- c("goldenrod1","yellow")

#boxplot
boxplot(ol.mio.mp$mean.growth[ol.mio.mp$genus=="Porites"] ~ ol.mio.mp$time[ol.mio.mp$genus=="Porites"],
        #main = "Comparison between Oligocene and Miocene: Porites",
        col=cols4, names=c("Oligocene (10)", "Miocene (21)"), xlab = "time", ylab= "mean growth rate (mm / year)")



wilcox.test(ol.mio.mp$mean.growth[ol.mio.mp$genus=="Porites"] ~ ol.mio.mp$time[ol.mio.mp$genus=="Porites"])

#kruskal.test(ol.mio.mp$mean.growth[ol.mio.mp$genus=="Porites"] ~ ol.mio.mp$time[ol.mio.mp$genus=="Porites"])

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!very useful function!!!!!!!!!!!!!!!!!!!!!!!!!
#summary (ol.mio.mp)

# RESULTS -----------------------------------------------------------------
#Wilcox test: p value is 1,504 e-06 is way SMALLER than 0,05 --> ??? PROBLEM









--------------------------------------------------------------------------------------------------------------------
# 4 Comparison of growth rates Oligocene vs. Miocene vs. modern ----------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------


#correcting the order for the x axis
ol.mio.mo.mp$time<- factor(ol.mio.mo.mp$time, levels = c("Oligocene", "Miocene", "modern"))

cols5<- c("goldenrod1","yellow", "seagreen2")

#boxplot
boxplot(ol.mio.mo.mp$mean.growth ~ ol.mio.mo.mp$time,
        #main = "Comparison between Oligocene, Miocene and modern",
        xlab = "time", ylab= "mean growth rate (mm / year)", names=c("Oligocene (22)", "Miocene (21)", "Modern (1.514)"),
        col=cols5, outline=FALSE)


#geht nicht, siehe oben
#wilcox.test(ol.mio.mo.mp$mean.growth~ol.mio.mo.mp$time)


kruskal.test(ol.mio.mo.mp$mean.growth ~ ol.mio.mo.mp$time)




###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though

#Kruskal Test: p value < 2.2e-16 is EXTREMELY SMALL --> ??? Null hypothesis was, that the values don't vary much
#if the p value is smaller than the commonly chosen significance level of 0,05,
#the null hypothesis is rejected, as in this case. The mean growth rates vary highly between the different times, as you can also see in the graph







# 5 ANOVA tests -------------------------------------------------------------

#Oligocene
#growth rate ~ reef section
an.o.mp.section<-aov(o.mp$mean.growth ~ o.mp$reef.section)
summary(an.o.mp.section)

#growth rate ~ genus
an.o.mp.genus<-aov(o.mp$mean.growth ~ o.mp$genus)
summary(an.o.mp.genus)


#--------------------------------------------------------------------------


#Miocene
#growth rate ~ reef section
an.m.mp.section<-aov(m.mp$mean.growth ~ m.mp$reef.section)
summary(an.m.mp.section)

#growth rate ~ genus                                DOES NOT MAKE SENSE (only PORITES)
#an.m.mp.genus<-aov(m.mp$mean.growth ~ m.mp$genus)
#summary(an.m.mp.genus)



