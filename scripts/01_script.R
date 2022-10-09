setwd("C:/Users/Kerry/Desktop/Master-thesis")

#preparing chronosphere data
library(chronosphere)
ct<-fetch("CoralTraitDB")
ct_growthrate<- subset(ct, trait_name=="Growth rate")
ct_growthrate<-data.frame(ct_growthrate$specie_name, ct_growthrate$trait_name, ct_growthrate$value)

write.csv2(ct_growthrate, "C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/modern growth rates.csv")

# OLIGOCENE ---------------------------------------------------------------


#loading data
growth.all.oligocene.reefs<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene/mean growth rates Oligocene.csv")







# comparison of growth rate means between reef sections -----------------------------------

#boxplot 
#correcting the order for the x axis
growth.all.oligocene.reefs$reef.section<- factor(growth.all.oligocene.reefs$reef.section, levels = c("proximal back reef", "distal back reef", "fore reef", "reef front"))


boxplot(growth.all.oligocene.reefs$mean.growth~growth.all.oligocene.reefs$reef.section, xlab="reef section", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between reef sections")







# comparison of growth rate means between genera ----------------------------------------------
#correcting the order for the x axis
growth.all.oligocene.reefs$genus<- factor(growth.all.oligocene.reefs$genus, levels = c("Porites", "Poritid", "Actinacis", "Tabelastrea", "Astreopora", "Pavona?"))

boxplot(growth.all.oligocene.reefs$mean.growth~growth.all.oligocene.reefs$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between genera")


# problem -----------------------------------------------------------------
#can not combine values of porites and poritids
#new table where Porites = Poritid
growth.all.oligocene.reefs_poritesporitid<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene/mean growth rates Oligocene.poritidporites.csv")

boxplot(growth.all.oligocene.reefs_poritesporitid$mean.growth~growth.all.oligocene.reefs_poritesporitid$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between genera")







# Miocene -----------------------------------------------------------------

#loading data
growth.all.miocene.reefs<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Miocene/mean growth rates Miocene.csv")

# comparison of growth rate means between reef sections -----------------------------------

#boxplot 

boxplot(growth.all.miocene.reefs$mean.growth~growth.all.miocene.reefs$reef.section, xlab="reef section", ylab="mean growth rate (mm)", main="Miocene: Comparison of growth rates between reef sections")



# comparison of growth rate means between genera ----------------------------------------------

boxplot(growth.all.miocene.reefs$mean.growth~growth.all.miocene.reefs$genus, xlab="Genus / Family", ylab="mean growth rate (mm)", main="Miocene: Comparison of growth rates between genera")

# problem -----------------------------------------------------------------
#only porites --> makes no sense









# Comparing Oligocene to modern growth rates ------------------------------

boxplot(growth.all.oligocene.reefs$mean.growth, "Oligocene")
