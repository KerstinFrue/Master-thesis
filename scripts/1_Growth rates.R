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

ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene.csv")
o <- subset(ol.mio, time=="Oligocene")
m <- subset(ol.mio, time=="Miocene")

#alldata
ol.mio.mo<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene modern.csv")





#--------------------------------------------------------------------------
# 1.0 Oligocene -----------------------------------------------------------

# 1.1 Comparison of growth rate means between reef sections ---------------
#--------------------------------------------------------------------------

#correcting the order for the x axis
o$reef.section<- factor(o$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))

#boxplot
boxplot(o$mean.growth~o$reef.section,
        main = "Oligocene: comparison between reef sections",
        xlab = "reef section", ylab= "mean growth rate (mm / year)")

#Test geht nicht? --> Gruppen müssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o$mean.growth~o$reef.section)

#--> Kruskal-test, whether the means vary between the Oligocene reef sections???
kruskal.test(o$mean.growth~o$reef.section)



# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the abck reef reef front, then proximal slope and 4. reef flat
#--> does agree with previous studies where it is said that the corals grow best in the back reef!

#slope: Favites data (1 specimen, only 2 measurements) was left out (very big growth rate)

#Kruskal-test: p-value 0.0184, is SMALLER than 0,05--> ??? PROBLEM







#--------------------------------------------------------------------------------------------------
# 1.2 comparison of growth rate means between genera ----------------------------------------------
#--------------------------------------------------------------------------------------------------

#correcting the order for the x axis
o$genus<- factor(o$genus, levels = c("Porites", "Poritid", "Actinacis", "Tarbellastraea", "Astreopora", "Pavona?"))

#boxplot
boxplot(o$mean.growth~o$genus,
        main = "Oligocene: comparison between genera",
        xlab = "genus", ylab= "mean growth rate (mm / year)")

#Test geht nicht?  --> Gruppen müssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o$mean.growth~o$reef.section)

kruskal.test(o$mean.growth ~ o$genus)



# RESULTS ---------------------------------------------------------------
#Porites and Poritids do not show similar growth --> should not fuse them!
#Kruskal-test: p-value 0.02679, is SMALLER than 0,05--> ??? PROBLEM












#--------------------------------------------------------------------------------------------

# 2.0 Miocene --------------------------------------------------------------------------------

# 2.1 Comparison of growth rate means between reef sections -----------------------------------
#----------------------------------------------------------------------------------------------

#correcting the order for the x axis
m$reef.section<- factor(m$reef.section, levels = c("back reef", "reef front", "proximal slope"))

#boxplot 
boxplot(m$mean.growth~m$reef.section,
        main = "Miocene: comparison between reef sections",
        xlab = "reef section", ylab= "mean growth rate (mm / year)")

#Test geht nicht?  --> Gruppen müssen gleich lang sein! Und Vergleich geht nur mit 2 Gruppen! -->Kruskal test
#wilcox.test(o$mean.growth ~ o$reef.section)

kruskal.test(m$mean.growth ~ m$reef.section)



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
cols <- c("cadetblue1", "cyan4", "cadetblue1", "cyan4", "olivedrab3", "olivedrab", "yellow", "goldenrod1")



#x11()
boxplot(ol.mio$mean.growth ~  ol.mio$time + ol.mio$reef.section, col=cols,
        main = "Comparison between Oligocene and Miocene: reef sections",
        xlab = "time : reef section", ylab= "mean growth rate (mm / year)", cex.main=3.0, cex.lab=3.0, cex.axis=1.2)


#option to show several graphs in one window
#windows(h=8, w=6)
#op <- par(mfrow=c(2,1))
#boxplot(o$mean.growth ~ o$reef.section)
#boxplot(m$mean.growth ~ m$reef.section)
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


#boxplot
boxplot(ol.mio$mean.growth[ol.mio$genus=="Porites"] ~ ol.mio$time[ol.mio$genus=="Porites"],
        main = "Comparison between Oligocene and Miocene: Porites",
        xlab = "time", ylab= "mean growth rate (mm / year)")



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

#boxplot
boxplot(ol.mio.mo$mean.growth ~ ol.mio.mo$time,
        main = "Comparison between Oligocene, Miocene and modern",
        xlab = "time", ylab= "mean growth rate (mm / year)")


#geht nicht, siehe oben
#wilcox.test(ol.mio.mo$mean.growth~ol.mio.mo$time)


kruskal.test(ol.mio.mo$mean.growth ~ ol.mio.mo$time)




###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though

#Kruskal Test: p value < 2.2e-16 is EXTREMELY SMALL --> ??? Null hypothesis was, that the values don't vary much
#if the p value is smaller than the commonly chosen significance level of 0,05,
#the null hypothesis is rejected, as in this case. The mean growth rates vary highly between the different times, as you can also see in the graph

