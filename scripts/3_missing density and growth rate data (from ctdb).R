setwd("C:/Users/Kerry/Desktop/Master-thesis")




#0 Preparing data ---------------------------------------------

library(chronosphere)
ct<-fetch("CoralTraitDB")



#----------------------------------------------------------------------------------------------------------------

# GENERAL PROBLEMS --------------------------------------------------------


# we do not know from what reef sections the data are (we need data from the reef front)
#------------------------------------------------------------------------------------------------------------------






# 1 Skeletal density ----------------------------------------------------

#-------------------------------------------------------------------------
# 1.1 Skeletal density Porites--------------------------------------------
#-------------------------------------------------------------------------

#subsetting for skeletal density data
d<- subset(ct, trait_name=="Skeletal density")

#subsetting for species Porites
d.por<-d[grepl("Porites", d$specie_name),]

d.por<-data.frame(d.por$trait_name, d.por$specie_name, d.por$value, d.por$standard_unit,
                  d.por$value_type, d.por$location_name, d.por$methodology_name)



#-------------------------------------------------------------------------
# 1.2 Skeletal density Actinacis------------------------------------------
--------------------------------------------------------------------------
#LITERATURE



#--------------------------------------------------------------------------
# 1.3 Skeletal density Hydnophora------------------------------------------
#--------------------------------------------------------------------------

#Hydnophora microconos                     1.37 g cm^-3   mean value














# 2 Growth rates ----------------------------------------------------------

#--------------------------------------------------------------------------
# 2.1 Growth rates Porites-------------------------------------------------
#--------------------------------------------------------------------------

#subsetting for growth rate data
gr<- subset(ct, trait_name=="Growth rate")

#subsetting for species Porites
gr.por<-gr[grepl("Porites", gr$specie_name),]


#subsetting for standard unit of mm yr^-1
#PROBLEM does not work, why??

gr.por<-gr.por[grepl("mm yr^-1", gr.por$standard_unit),]



gr.por<-data.frame(gr.por$trait_name, gr.por$specie_name, gr.por$value, gr.por$standard_unit,
                  gr.por$value_type, gr.por$location_name, gr.por$methodology_name)



#--------------------------------------------------------------------------
# 2.2 Growth rates Actinacis-----------------------------------------------
#--------------------------------------------------------------------------

#MEASURED





#--------------------------------------------------------------------------
# 2.3 Growth rates Hydnophora----------------------------------------------
#--------------------------------------------------------------------------


#Hydnophora microconos  Maldives          6.3 mm yr^-1    mean value
#Hydnophora microconos  Marshall islands  11.5 mm yr^-1
#Hydnophora rigida      Phillippines      71 mm yr^-1



