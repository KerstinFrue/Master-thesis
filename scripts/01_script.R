setwd("C:/Users/Kerry/Desktop/Master-thesis")

# OLIGOCENE ---------------------------------------------------------------


#loading data
growth.all.oligocene.reefs<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/data/growth rates/Oligocene/means Oligocene.csv")


# comparison between reef section means -----------------------------------

#boxplot 
#correcting the order for the x axis
growth.all.oligocene.reefs$reef.section<- factor(growth.all.oligocene.reefs$reef.section, levels = c("proximal back reef", "distal back reef", "fore reef", "reef front"))


boxplot(growth.all.oligocene.reefs$mean.growth~growth.all.oligocene.reefs$reef.section, xlab="reef section", ylab="mean growth rate (mm)", main="Oligocene: Comparison of growth rates between reef sections")


