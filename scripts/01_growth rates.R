setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing chronosphere modern data ---------------------------------------------

#library(chronosphere)
#ct<-fetch("CoralTraitDB")
#ct_growthrate<- subset(ct, trait_name=="Growth rate")
#ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)
#library(readr)
###write.csv(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/data/growth rates//modern growth rates.csv", row.names=FALSE, quote=F)

ct_growthrate<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/modern growth rates.csv")





# 1.0 OLIGOCENE ---------------------------------------------------------------


#loading data
growth.all.oligocene.reefs<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene/mean growth rates Oligocene.csv")


# 1.1 Comparison of growth rate means between reef sections -----------------------------------

#boxplot 
#correcting the order for the x axis
growth.all.oligocene.reefs$reef.section<- factor(growth.all.oligocene.reefs$reef.section, levels = c("proximal back reef", "distal back reef", "fore reef", "reef front"))


boxplot(growth.all.oligocene.reefs$mean.growth~growth.all.oligocene.reefs$reef.section, xlab="reef section", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between reef sections")


# RESULTS---------------------------------------------------------------
#growth rate during Oligocene highest in the reef front, then proximal back reef, then fore reef and 4. distal back reef
#--> does not agree with previous studies where it is said that the corals grow best in the back reef?
#reef front should be low growth, its not a good place to live for corals??




# 1.2 comparison of growth rate means between genera ----------------------------------------------


#correcting the order for the x axis
growth.all.oligocene.reefs$genus<- factor(growth.all.oligocene.reefs$genus, levels = c("Porites", "Poritid", "Actinacis", "Tabelastrea", "Astreopora", "Pavona?"))

boxplot(growth.all.oligocene.reefs$mean.growth~growth.all.oligocene.reefs$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between genera")


# RESULTS ---------------------------------------------------------------
#Porites and Poritids do not show similar growth --> should not fuse them?


######################################################################################################

# problem -----------------------------------------------------------------
#can not combine values of porites and poritids --> new table where Porites = Poritid

#from here on out, Porites = Poritids

growth.all.oligocene.reefs_poritesporitid<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene/mean growth rates Oligocene.poritidporites.csv")


growth.all.oligocene.reefs_poritesporitid$genus<- factor(growth.all.oligocene.reefs_poritesporitid$genus, levels = c("Poritid", "Actinacis", "Tabelastrea", "Astreopora", "Pavona?"))
boxplot(growth.all.oligocene.reefs_poritesporitid$mean.growth~growth.all.oligocene.reefs_poritesporitid$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between genera")


# RESULTS ---------------------------------------------------------------
#Poritids have the highest growth rates and show a wide range #problem: what about pavona?
#2. Tabelastrea, 3. Actinacis



















# 2.0 Miocene -----------------------------------------------------------------

#loading data
growth.all.miocene.reefs<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Miocene/mean growth rates Miocene.csv")

# 2.1 Comparison of growth rate means between reef sections -----------------------------------

#boxplot 

boxplot(growth.all.miocene.reefs$mean.growth~growth.all.miocene.reefs$reef.section, xlab="reef section", ylab="mean growth rate (mm)", main="Miocene: Comparison of growth rates between reef sections")



# 2.2 Comparison of growth rate means between genera ----------------------------------------------

boxplot(growth.all.miocene.reefs$mean.growth~growth.all.miocene.reefs$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Miocene: Comparison of growth rates between genera")

# problem -----------------------------------------------------------------
#only porites --> makes no sense
















# 3 Oligocene vs. Miocene ------------------------------


# 3.1 Comparison of growth rate between Oligocene and Miocene: reef section ------------


growth.oligocene.miocene.reef.section<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene Miocene growth rates reef section.csv")


#correcting the order for the x axis
growth.oligocene.miocene.reef.section$reef.section<- factor(growth.oligocene.miocene.reef.section$reef.section, levels = c("Oligocene back reef", "Miocene back reef", "Oligocene reef front","Miocene reef front","Oligocene slope", "Miocene slope"))

boxplot(growth.oligocene.miocene.reef.section$mean.growth~growth.oligocene.miocene.reef.section$reef.section, xlab="time & reef section", ylab="mean growth rate (mm)", main="Growth rate comparison: Oligocene vs. Miocene reef sections")



# 3.2 Comparison of growth rate between Oligocene and Miocene: genus (Porites) --------

growth.oligocene.miocene.genus<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene Miocene growth rates genus.csv")

#correcting the order for the x axis
growth.oligocene.miocene.genus$genus<- factor(growth.oligocene.miocene.genus$genus, levels = c("Oligocene Poritid", "Miocene Porites"))


boxplot(growth.oligocene.miocene.genus$mean.growth~growth.oligocene.miocene.genus$genus, xlab="time & reef section", ylab="mean growth rate (mm)", main="Growth rate comparison: Oligocene vs. Miocene Poritids")

#############################
#RESULTS



















# 4 Comparison of growth rates Oligocene vs. Miocene vs. modern ----------------------------------------------------
growth.oligocene.miocene.modern<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene Miocene Modern growth rates.csv")

#correcting the order for the x axis
growth.oligocene.miocene.modern$time<- factor(growth.oligocene.miocene.modern$time, levels = c("Oligocene", "Miocene", "modern"))

boxplot(growth.oligocene.miocene.modern$growth.rate~growth.oligocene.miocene.modern$time, xlab="time", ylab="mean growth rate (mm)", main="Comparison of growth rates: 
        Oligocene, Miocene, modern")

###################

# RESULTS -----------------------------------------------------------------
#mean mean growth rate 1. modern, 2. Oligocene, 3. Miocene
#modern growth rates have the highest range by far, up to over 300 mm (30 cm?!), most values are up to around 30 mm though