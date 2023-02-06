setwd("C:/Users/Kerry/Desktop/Master-thesis")

# Growth rate data ----------------------------------------------
# all growth measurements data
all<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/growth rates/all growth rates field measurements.csv")

ol<-subset(all, time=="Oligocene")
mio<-subset(all, time=="Miocene")



#----------------------------------------------------------------------------------------------------------------------
#subsettting

ol.1back<-subset(ol, X=="Oligocene back reef")
ol.2flat<-subset(ol, X=="Oligocene reef flat")
ol.3front<-subset(ol, X=="Oligocene reef front")
ol.4slope<-subset(ol, X=="Oligocene proximal slope")

ol.por<-subset(ol, genus=="Porites")

#-------------------------------------------------------------
mio.1back<-subset(mio, X=="Miocene back reef")
mio.2front<-subset(mio, X=="Miocene reef front")
mio.3slope<-subset(mio, X=="Miocene proximal slope")







#-----------------------------------------------------------------------------------------------------------------

#means of Porites from Oligocene reef front
means.ol.por<-aggregate(ol.por$growth..mm., list(ol.por$specimen_id), FUN=mean)

#standard errors for Oligocene Porites means
se <- tapply(ol.por$growth..mm., ol.por$X, function(x) sd(x)/sqrt(length(x)))
str(se)
se <- as.data.frame(se)


#seems to be working, same results as with excel --> rest done in excel 

#------------------------------------------------------------------------------------------------------------------

#class(ol.1back$specimen_id)
#class(ol.1back$growth.mm)
#ol.1back$specimen_id<-as.numeric(ol.1back$specimen_id)

cols1 <- c("cadetblue1", "cadetblue1","cadetblue1","cadetblue1","cadetblue1","cadetblue1", "cyan4", "cyan4","cyan4","cyan4", "olivedrab3")

#correcting the order for the x axis
ol.por$specimen_id<- factor(ol.por$specimen_id,
              levels = c("VD1", "VD2", "VD3","VD4","VD10","VD12","SC4", "SC5","SC6","SC8","PMD4"))


#plot all growth rates of Oligocene Porites per specimen
x11()
boxplot(ol.por$growth..mm. ~ ol.por$specimen_id, , col=cols1)
        #xlab = "specimen ID", ylab= "mean growth rate (mm / year)",
        #names=c("SC4", "SC5", "SC6", "SC8", "VD1", "VD2", "VD3", "VD4", "VD10", "VD12"))




