setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

library(chronosphere)
#ct<-fetch("CoralTraitDB")





# 1 Skeletal density --------------------------------------------------------

#-------------------------------------------------------------------------
#Skeletal density Porites-------------------------------------------------
--------------------------------------------------------------------------
#subsetting for skeletal density data
d<- subset(ct, trait_name=="Skeletal density")

#subsetting for species Porites
d.por<-d[grepl("Porites", d$specie_name),]

d.por<-data.frame(d.por$trait_name, d.por$specie_name, d.por$value, d.por$standard_unit,
                  d.por$value_type, d.por$location_name, d.por$methodology_name)




#--------------------------------------------------------------------------
#Skeletal density Hydnophora-----------------------------------------------
#--------------------------------------------------------------------------

#Hydnophora microconos                     1.37 g cm^-3   mean value







# 2 Growth rates ------------------------------------------------------------

#--------------------------------------------------------------------------
#Growth rate Hydnophora----------------------------------------------------
#--------------------------------------------------------------------------


#Hydnophora microconos  Maldives          6.3 mm yr^-1    mean value
#Hydnophora microconos  Marshall islands  11.5 mm yr^-1
#Hydnophora rigida      Phillippines      71 mm yr^-1



