

#1 density Stylophora

library(chronosphere)
ct<-fetch("CoralTraitDB")
ctdens<-subset(ct, trait_name=="Skeletal density")
ctdens<-subset(ctdens, specie_name=="Stylophora pistillata")
mean(as.numeric(ctdens$value))
#1,70