setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

# modern data -------------------------------------------------------------


#library(chronosphere)
#ct<-fetch("CoralTraitDB")
#ct_growthrate<- subset(ct, trait_name=="Growth rate")
#ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)
#library(readr)
#write.csv(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/data/growth rates//modern growth rates.csv", row.names=FALSE, quote=F)

modern.data<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/modern mean growth rates.csv")



# Oligocene and Miocene data ----------------------------------------------

ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene.csv")
ol.mio.mo<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/all mean growth rates Oligocene Miocene Modern.csv")


# 1.0 Oligocene -----------------------------------------------------------


# 1.1 Comparison of growth rate means between reef sections ---------------

#boxplot
#correcting the order for the x axis
ol.mio$reef.section<- factor(ol.mio$reef.section, levels = c("back reef", "reef flat", "reef front", "proximal slope"))

#boxplot
boxplot(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$reef.section[ol.mio$time=="Oligocene"])

#PROBLEM: geht nicht?
wilcox.test(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$reef.section[ol.mio$time=="Oligocene"])

# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the reef front, then back reef, then proximal slope and 4. reef flat
#--> does not agree with previous studies where it is said that the corals grow best in the back reef?
#slope: Favites data (1 specimen, only 2 measurements) was left out (very big growth rate)






# 1.2 comparison of growth rate means between genera ----------------------------------------------

#correcting the order for the x axis
ol.mio$genus<- factor(ol.mio$genus, levels = c("Porites", "Poritid", "Actinacis", "Tarbellastraea", "Astreopora", "Pavona?"))

#boxplot
boxplot(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$genus[ol.mio$time=="Oligocene"])

#PROBLEM: geht nicht?
wilcox.test(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$genus[ol.mio$time=="Oligocene"])

# RESULTS ---------------------------------------------------------------
#Porites and Poritids do not show similar growth --> should not fuse them?






# 1.2.1 Porites = Poritid -------------------------------------------------------
#from here on out, Porites = Poritid
ol.mio<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/mean growth rates Oligocene Miocene Porites=Poritid.csv")

#correcting the order for the x axis
ol.mio$genus<- factor(ol.mio$genus, levels = c("Poritid", "Actinacis", "Tarbellastraea", "Astreopora", "Pavona?"))

#boxplot
boxplot(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$genus[ol.mio$time=="Oligocene"])

#Problem: geht nicht
wilcox.test(ol.mio$mean.growth[ol.mio$time=="Oligocene"]~ol.mio$genus[ol.mio$time=="Oligocene"])

# RESULTS --------------------
#









# 2.0 Miocene -----------------------------------------------------------------

# 2.1 Comparison of growth rate means between reef sections -----------------------------------

#boxplot 

#correcting the order for the x axis
ol.mio$reef.section<- factor(ol.mio$reef.section, levels = c("back reef", "reef front", "proximal slope"))

boxplot(ol.mio$mean.growth[ol.mio$time=="Miocene"]~ol.mio$reef.section[ol.mio$time=="Miocene"])

#Problem: geht nicht
wilcox.test(ol.mio$mean.growth[ol.mio$time=="Miocene"]~ol.mio$reef.section[ol.mio$time=="Miocene"])

#RESULTS



# 2.2 Comparison of growth rate means between genera ----------------------------------------------
#makes no sense (ONLY Porites)








# 3 Oligocene vs. Miocene ------------------------------


# 3.1 Comparison of growth rate between Oligocene and Miocene: reef section ------------

#Problem
o <- subset(ol.mio, time=="Oligocene")
boxplot(o$mean.growth ~ o$reef.section)

m <- subset(ol.mio, time=="Miocene")

cols <- c("cyan1", "cyan2", "chartreuse1", "chartreuse2", "darkorange1", "darkorange2")

X11()
boxplot(ol.mio$mean.growth ~ ol.mio$reef.section + ol.mio$time)
boxplot(ol.mio$mean.growth ~  ol.mio$time + ol.mio$reef.section, col=cols)


windows(h=8, w=6)
op <- par(mfrow=c(2,1))
boxplot(o$mean.growth ~ o$reef.section)
boxplot(m$mean.growth ~ m$reef.section)
par(op)

#boxplot
boxplot((ol.mio$mean.growth[ol.mio$time=="Oligocene"~ol.mio$reef.section[ol.mio$time=="Oligocene"])~(ol.mio$mean.growth[ol.mio$time=="Miocene"]~ol.mio$reef.section[ol.mio$time=="Miocene"]))

#PROBLEM
wilcox.test()





# 4 Comparison of growth rates Oligocene vs. Miocene vs. modern ----------------------------------------------------
growth.oligocene.miocene.modern<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene Miocene Modern growth rates.csv")

#correcting the order for the x axis
ol.mio.mo$time<- factor(ol.mio.mo$time, levels = c("Oligocene", "Miocene", "modern"))

#boxplot
boxplot(ol.mio.mo$growth.rate~ol.mio.mo$time)


wilcox.test(ol.mio.mo$growth.rate~ol.mio.mo$time)
###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though


