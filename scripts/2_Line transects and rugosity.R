setwd("C:/Users/Kerry/Desktop/Master-thesis")

#0 Preparing data ---------------------------------------------
line<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/line transects/all original line transect data.csv")

#summary(line)
library (dplyr)
#install.packages("xlsx")
library("xlsx")






# PER REEF SECTION --------------------------------------------------------





# Vitigliano --------------------------------------------------------------

VT<-nrow(line %>% filter(section_name %in% "Vitigliano"))

#amount Actinacis
VT.act<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Actinacis"))*100)/VT
#amount Astreopora
VT.ast<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Astreopora"))*100)/VT
#amount Bioclastic
VT.bio<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Bioclastic sediment"))*100)/VT
#amount Bivalve
VT.biv<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Bivalve"))*100)/VT
#amount Bivalve boring
VT.biv.b<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Bivalve boring"))*100)/VT
#amount Caulastrea
VT.cau<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Caulastrea"))*100)/VT
#amount CCA
VT.cca<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "CCA"))*100)/VT
#amount Cement
VT.cem<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Cement"))*100)/VT
#amount Coral
VT.cor<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Coral"))*100)/VT
#amount Coralline algae
VT.cor.a<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Coralline algae"))*100)/VT
#amount Favites
VT.fav<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Favites"))*100)/VT
#amount Glauconite
VT.glau<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Glauconite"))*100)/VT
#amount Hydnophora
VT.hyd<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Hydnophora"))*100)/VT
#amount Montastrea
VT.mon<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Montastrea"))*100)/VT
#amount Pavona
VT.pav<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Pavona"))*100)/VT
#amount Porites
VT.por<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Porites"))*100)/VT
#amount Poriticae
VT.pd<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Poriticae"))*100)/VT
#amount Sediment
VT.sed<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Sediment"))*100)/VT
#amount Shale
VT.sha<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Shale"))*100)/VT
#amount Siderastrea
VT.sid<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Siderastrea"))*100)/VT
#amount Stylophora
VT.sty<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Stylophora"))*100)/VT
#amount Tarbellastraea
VT.tar<-(nrow(line %>% filter(section_name %in% "Vitigliano" & point_id == "Tarbellastraea"))*100)/VT


VT.data<-data.frame(VT,VT.act, VT.ast,VT.bio,VT.biv,VT.biv.b,
                     VT.cau,VT.cca,VT.cem,VT.cor,VT.cor.a,VT.fav,VT.glau,VT.hyd,VT.mon,VT.pav,VT.pd,
                     VT.por,VT.sed,VT.sha,VT.sid,VT.sty,VT.tar)


#write.xlsx(x = VT.data,"Oligocene back reef.xlsx")


# Santa Cesarea --------------------------------------------------------------

SC<-nrow(line %>% filter(section_name %in% "Santa Cesarea"))

#amount Actinacis
SC.act<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Actinacis"))*100)/SC
#amount Astreopora
SC.ast<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Astreopora"))*100)/SC
#amount Bioclastic
SC.bio<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Bioclastic sediment"))*100)/SC
#amount Bivalve
SC.biv<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Bivalve"))*100)/SC
#amount Bivalve boring
SC.biv.b<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Bivalve boring"))*100)/SC
#amount Caulastrea
SC.cau<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Caulastrea"))*100)/SC
#amount CCA
SC.cca<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "CCA"))*100)/SC
#amount Cement
SC.cem<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Cement"))*100)/SC
#amount Coral
SC.cor<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Coral"))*100)/SC
#amount Coralline algae
SC.cor.a<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Coralline algae"))*100)/SC
#amount Favites
SC.fav<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Favites"))*100)/SC
#amount Glauconite
SC.glau<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Glauconite"))*100)/SC
#amount Hydnophora
SC.hyd<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Hydnophora"))*100)/SC
#amount Montastrea
SC.mon<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Montastrea"))*100)/SC
#amount Pavona
SC.pav<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Pavona"))*100)/SC
#amount Porites
SC.por<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Porites"))*100)/SC
#amount Poriticae
SC.pd<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Poriticae"))*100)/SC
#amount Sediment
SC.sed<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Sediment"))*100)/SC
#amount Shale
SC.sha<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Shale"))*100)/SC
#amount Siderastrea
SC.sid<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Siderastrea"))*100)/SC
#amount Stylophora
SC.sty<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Stylophora"))*100)/SC
#amount Tarbellastraea
SC.tar<-(nrow(line %>% filter(section_name %in% "Santa Cesarea" & point_id == "Tarbellastraea"))*100)/SC


SC.data<-data.frame(SC,SC.act, SC.ast,SC.bio,SC.biv,SC.biv.b,
                    SC.cau,SC.cca,SC.cem,SC.cor,SC.cor.a,SC.fav,SC.glau,SC.hyd,SC.mon,SC.pav,SC.pd,
                    SC.por,SC.sed,SC.sha,SC.sid,SC.sty,SC.tar)


#write.xlsx(x = SC.data,"Oligocene reef front.xlsx")




# Porto Miggiano --------------------------------------------------------------

PM<-nrow(line %>% filter(section_name %in% "Porto Miggiano"))

#amount Actinacis
PM.act<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Actinacis"))*100)/PM
#amount Astreopora
PM.ast<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Astreopora"))*100)/PM
#amount Bioclastic
PM.bio<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Bioclastic sediment"))*100)/PM
#amount Bivalve
PM.biv<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Bivalve"))*100)/PM
#amount Bivalve boring
PM.biv.b<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Bivalve boring"))*100)/PM
#amount Caulastrea
PM.cau<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Caulastrea"))*100)/PM
#amount CCA
PM.cca<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "CCA"))*100)/PM
#amount Cement
PM.cem<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Cement"))*100)/PM
#amount Coral
PM.cor<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Coral"))*100)/PM
#amount Coralline algae
PM.cor.a<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Coralline algae"))*100)/PM
#amount Favites
PM.fav<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Favites"))*100)/PM
#amount Glauconite
PM.glau<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Glauconite"))*100)/PM
#amount Hydnophora
PM.hyd<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Hydnophora"))*100)/PM
#amount Montastrea
PM.mon<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Montastrea"))*100)/PM
#amount Pavona
PM.pav<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Pavona"))*100)/PM
#amount Porites
PM.por<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Porites"))*100)/PM
#amount Poriticae
PM.pd<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Poriticae"))*100)/PM
#amount Sediment
PM.sed<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Sediment"))*100)/PM
#amount Shale
PM.sha<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Shale"))*100)/PM
#amount Siderastrea
PM.sid<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Siderastrea"))*100)/PM
#amount Stylophora
PM.sty<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Stylophora"))*100)/PM
#amount Tarbellastraea
PM.tar<-(nrow(line %>% filter(section_name %in% "Porto Miggiano" & point_id == "Tarbellastraea"))*100)/PM


PM.data<-data.frame(PM,PM.act, PM.ast,PM.bio,PM.biv,PM.biv.b,
                    PM.cau,PM.cca,PM.cem,PM.cor,PM.cor.a,PM.fav,PM.glau,PM.hyd,PM.mon,PM.pav,PM.pd,
                    PM.por,PM.sed,PM.sha,PM.sid,PM.sty,PM.tar)


#write.xlsx(x = PM.data,"Oligocene proximal slope.xlsx")








# Tricase --------------------------------------------------------------

Tri<-nrow(line %>% filter(section_name %in% "Tricase"))

#amount Actinacis
Tri.act<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Actinacis"))*100)/Tri
#amount Astreopora
Tri.ast<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Astreopora"))*100)/Tri
#amount Bioclastic
Tri.bio<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Bioclastic sediment"))*100)/Tri
#amount Bivalve
Tri.biv<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Bivalve"))*100)/Tri
#amount Bivalve boring
Tri.biv.b<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Bivalve boring"))*100)/Tri
#amount Caulastrea
Tri.cau<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Caulastrea"))*100)/Tri
#amount CCA
Tri.cca<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "CCA"))*100)/Tri
#amount Cement
Tri.cem<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Cement"))*100)/Tri
#amount Coral
Tri.cor<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Coral"))*100)/Tri
#amount Coralline algae
Tri.cor.a<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Coralline algae"))*100)/Tri
#amount Favites
Tri.fav<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Favites"))*100)/Tri
#amount Glauconite
Tri.glau<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Glauconite"))*100)/Tri
#amount Hydnophora
Tri.hyd<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Hydnophora"))*100)/Tri
#amount Montastrea
Tri.mon<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Montastrea"))*100)/Tri
#amount Pavona
Tri.pav<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Pavona"))*100)/Tri
#amount Porites
Tri.por<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Porites"))*100)/Tri
#amount Poriticae
Tri.pd<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Poriticae"))*100)/Tri
#amount Sediment
Tri.sed<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Sediment"))*100)/Tri
#amount Shale
Tri.sha<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Shale"))*100)/Tri
#amount Siderastrea
Tri.sid<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Siderastrea"))*100)/Tri
#amount Stylophora
Tri.sty<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Stylophora"))*100)/Tri
#amount Tarbellastraea
Tri.tar<-(nrow(line %>% filter(section_name %in% "Tricase" & point_id == "Tarbellastraea"))*100)/Tri


Tri.data<-data.frame(Tri,Tri.act, Tri.ast,Tri.bio,Tri.biv,Tri.biv.b,
                    Tri.cau,Tri.cca,Tri.cem,Tri.cor,Tri.cor.a,Tri.fav,Tri.glau,Tri.hyd,Tri.mon,Tri.pav,Tri.pd,
                    Tri.por,Tri.sed,Tri.sha,Tri.sid,Tri.sty,Tri.tar)


#write.xlsx(x = Tri.data,"Oligocene proximal slope.xlsx")












# Ciolo --------------------------------------------------------------

CL<-nrow(line %>% filter(section_name %in% "Ciolo"))

#amount Actinacis
CL.act<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Actinacis"))*100)/CL
#amount Astreopora
CL.ast<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Astreopora"))*100)/CL
#amount Bioclastic
CL.bio<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Bioclastic sediment"))*100)/CL
#amount Bivalve
CL.biv<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Bivalve"))*100)/CL
#amount Bivalve boring
CL.biv.b<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Bivalve boring"))*100)/CL
#amount Caulastrea
CL.cau<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Caulastrea"))*100)/CL
#amount CCA
CL.cca<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "CCA"))*100)/CL
#amount Cement
CL.cem<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Cement"))*100)/CL
#amount Coral
CL.cor<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Coral"))*100)/CL
#amount Coralline algae
CL.cor.a<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Coralline algae"))*100)/CL
#amount Favites
CL.fav<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Favites"))*100)/CL
#amount Glauconite
CL.glau<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Glauconite"))*100)/CL
#amount Hydnophora
CL.hyd<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Hydnophora"))*100)/CL
#amount Montastrea
CL.mon<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Montastrea"))*100)/CL
#amount Pavona
CL.pav<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Pavona"))*100)/CL
#amount Porites
CL.por<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Porites"))*100)/CL
#amount Poriticae
CL.pd<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Poriticae"))*100)/CL
#amount Sediment
CL.sed<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Sediment"))*100)/CL
#amount Shale
CL.sha<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Shale"))*100)/CL
#amount Siderastrea
CL.sid<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Siderastrea"))*100)/CL
#amount Stylophora
CL.sty<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Stylophora"))*100)/CL
#amount Tarbellastraea
CL.tar<-(nrow(line %>% filter(section_name %in% "Ciolo" & point_id == "Tarbellastraea"))*100)/CL


CL.data<-data.frame(CL,CL.act, CL.ast,CL.bio,CL.biv,CL.biv.b,
                     CL.cau,CL.cca,CL.cem,CL.cor,CL.cor.a,CL.fav,CL.glau,CL.hyd,CL.mon,CL.pav,CL.pd,
                     CL.por,CL.sed,CL.sha,CL.sid,CL.sty,CL.tar)


#write.xlsx(x = CL.data,"Miocene reef front.xlsx")










# Leuca --------------------------------------------------------------

LL<-nrow(line %>% filter(section_name %in% "Leuca"))

#amount Actinacis
LL.act<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Actinacis"))*100)/LL
#amount Astreopora
LL.ast<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Astreopora"))*100)/LL
#amount BioLLastic
LL.bio<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "BioLLastic sediment"))*100)/LL
#amount Bivalve
LL.biv<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Bivalve"))*100)/LL
#amount Bivalve boring
LL.biv.b<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Bivalve boring"))*100)/LL
#amount Caulastrea
LL.cau<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Caulastrea"))*100)/LL
#amount CCA
LL.cca<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "CCA"))*100)/LL
#amount Cement
LL.cem<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Cement"))*100)/LL
#amount Coral
LL.cor<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Coral"))*100)/LL
#amount Coralline algae
LL.cor.a<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Coralline algae"))*100)/LL
#amount Favites
LL.fav<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Favites"))*100)/LL
#amount Glauconite
LL.glau<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Glauconite"))*100)/LL
#amount Hydnophora
LL.hyd<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Hydnophora"))*100)/LL
#amount Montastrea
LL.mon<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Montastrea"))*100)/LL
#amount Pavona
LL.pav<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Pavona"))*100)/LL
#amount Porites
LL.por<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Porites"))*100)/LL
#amount Poriticae
LL.pd<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Poriticae"))*100)/LL
#amount Sediment
LL.sed<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Sediment"))*100)/LL
#amount Shale
LL.sha<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Shale"))*100)/LL
#amount Siderastrea
LL.sid<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Siderastrea"))*100)/LL
#amount Stylophora
LL.sty<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Stylophora"))*100)/LL
#amount Tarbellastraea
LL.tar<-(nrow(line %>% filter(section_name %in% "Leuca" & point_id == "Tarbellastraea"))*100)/LL


LL.data<-data.frame(LL,LL.act, LL.ast,LL.bio,LL.biv,LL.biv.b,
                    LL.cau,LL.cca,LL.cem,LL.cor,LL.cor.a,LL.fav,LL.glau,LL.hyd,LL.mon,LL.pav,LL.pd,
                    LL.por,LL.sed,LL.sha,LL.sid,LL.sty,LL.tar)


#write.xlsx(x = LL.data,"Miocene proximal slope.xlsx")







































# SITES OF SECTIONS -------------------------------------------------------



#--------------------------------------------------------------------------
# VT1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
VT1<-nrow(line %>% filter(transect_id %in% "VT1"))
#amount Actinacis
VT1.act<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Actinacis"))*100)/VT1
#amount Astreopora
VT1.ast<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Astreopora"))*100)/VT1
#amount Bioclastic
VT1.bio<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Bioclastic sediment"))*100)/VT1
#amount Bivalve
VT1.biv<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Bivalve"))*100)/VT1
#amount Bivalve boring
VT1.biv.b<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Bivalve boring"))*100)/VT1
#amount Caulastrea
VT1.cau<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Caulastrea"))*100)/VT1
#amount CCA
VT1.cca<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "CCA"))*100)/VT1
#amount Cement
VT1.cem<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Cement"))*100)/VT1
#amount Coral
VT1.cor<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Coral"))*100)/VT1
#amount Coralline algae
VT1.cor.a<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Coralline algae"))*100)/VT1
#amount Favites
VT1.fav<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Favites"))*100)/VT1
#amount Glauconite
VT1.glau<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Glauconite"))*100)/VT1
#amount Hydnophora
VT1.hyd<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Hydnophora"))*100)/VT1
#amount Montastrea
VT1.mon<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Montastrea"))*100)/VT1
#amount Pavona
VT1.pav<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Pavona"))*100)/VT1
#amount Porites
VT1.por<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Porites"))*100)/VT1
#amount Poriticae
VT1.pd<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Poriticae"))*100)/VT1
#amount Sediment
VT1.sed<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Sediment"))*100)/VT1
#amount Shale
VT1.sha<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Shale"))*100)/VT1
#amount Siderastrea
VT1.sid<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Siderastrea"))*100)/VT1
#amount Stylophora
VT1.sty<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Stylophora"))*100)/VT1
#amount Tarbellastraea
VT1.tar<-(nrow(line %>% filter(transect_id == "VT1" & point_id == "Tarbellastraea"))*100)/VT1


VT1.data<-data.frame(VT1,VT1.act, VT1.ast,VT1.bio,VT1.biv,VT1.biv.b,
                               VT1.cau,VT1.cca,VT1.cem,VT1.cor,VT1.cor.a,VT1.fav,VT1.glau,VT1.hyd,VT1.mon,VT1.pav,VT1.pd,
                               VT1.por,VT1.sed,VT1.sha,VT1.sid,VT1.sty,VT1.tar)

#write.xlsx(x = VT1.data,"VT1.xlsx")


#--------------------------------------------------------------------------
# VT2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#VT2
#amount total
VT2<-nrow(line %>% filter(transect_id %in% "VT2"))
#amount Actinacis
VT2.act<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Actinacis"))*100)/VT2
#amount Astreopora
VT2.ast<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Astreopora"))*100)/VT2
#amount Bioclastic
VT2.bio<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Bioclastic sediment"))*100)/VT2
#amount Bivalve
VT2.biv<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Bivalve"))*100)/VT2
#amount Bivalve boring
VT2.biv.b<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Bivalve boring"))*100)/VT2
#amount Caulastrea
VT2.cau<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Caulastrea"))*100)/VT2
#amount CCA
VT2.cca<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "CCA"))*100)/VT2
#amount Cement
VT2.cem<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Cement"))*100)/VT2
#amount Coral
VT2.cor<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Coral"))*100)/VT2
#amount Coralline algae
VT2.cor.a<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Coralline algae"))*100)/VT2
#amount Favites
VT2.fav<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Favites"))*100)/VT2
#amount Glauconite
VT2.glau<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Glauconite"))*100)/VT2
#amount Hydnophora
VT2.hyd<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Hydnophora"))*100)/VT2
#amount Montastrea
VT2.mon<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Montastrea"))*100)/VT2
#amount Pavona
VT2.pav<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Pavona"))*100)/VT2
#amount Porites
VT2.por<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Porites"))*100)/VT2
#amount Poriticae
VT2.pd<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Poriticae"))*100)/VT2
#amount Sediment
VT2.sed<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Sediment"))*100)/VT2
#amount Shale
VT2.sha<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Shale"))*100)/VT2
#amount Siderastrea
VT2.sid<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Siderastrea"))*100)/VT2
#amount Stylophora
VT2.sty<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Stylophora"))*100)/VT2
#amount Tarbellastraea
VT2.tar<-(nrow(line %>% filter(transect_id == "VT2" & point_id == "Tarbellastraea"))*100)/VT2


VT2.data<-data.frame(VT2,VT2.act, VT2.ast,VT2.bio,VT2.biv,VT2.biv.b,
                               VT2.cau,VT2.cca,VT2.cem,VT2.cor,VT2.cor.a,VT2.fav,VT2.glau,VT2.hyd,VT2.mon,VT2.pav,VT2.pd,
                               VT2.por,VT2.sed,VT2.sha,VT2.sid,VT2.sty,VT2.tar)


#write.xlsx(x = VT2.data,"VT2.xlsx")



#-------------------------------------------------------------------------
# VT3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
VT3<-nrow(line %>% filter(transect_id %in% "VT3"))
#amount Actinacis
VT3.act<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Actinacis"))*100)/VT3
#amount Astreopora
VT3.ast<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Astreopora"))*100)/VT3
#amount Bioclastic
VT3.bio<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Bioclastic sediment"))*100)/VT3
#amount Bivalve
VT3.biv<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Bivalve"))*100)/VT3
#amount Bivalve boring
VT3.biv.b<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Bivalve boring"))*100)/VT3
#amount Caulastrea
VT3.cau<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Caulastrea"))*100)/VT3
#amount CCA
VT3.cca<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "CCA"))*100)/VT3
#amount Cement
VT3.cem<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Cement"))*100)/VT3
#amount Coral
VT3.cor<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Coral"))*100)/VT3
#amount Coralline algae
VT3.cor.a<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Coralline algae"))*100)/VT3
#amount Favites
VT3.fav<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Favites"))*100)/VT3
#amount Glauconite
VT3.glau<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Glauconite"))*100)/VT3
#amount Hydnophora
VT3.hyd<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Hydnophora"))*100)/VT3
#amount Montastrea
VT3.mon<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Montastrea"))*100)/VT3
#amount Pavona
VT3.pav<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Pavona"))*100)/VT3
#amount Porites
VT3.por<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Porites"))*100)/VT3
#amount Poriticae
VT3.pd<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Poriticae"))*100)/VT3
#amount Sediment
VT3.sed<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Sediment"))*100)/VT3
#amount Shale
VT3.sha<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Shale"))*100)/VT3
#amount Siderastrea
VT3.sid<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Siderastrea"))*100)/VT3
#amount Stylophora
VT3.sty<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Stylophora"))*100)/VT3
#amount Tarbellastraea
VT3.tar<-(nrow(line %>% filter(transect_id == "VT3" & point_id == "Tarbellastraea"))*100)/VT3


VT3.data<-VT3.data<-data.frame(VT3,VT3.act, VT3.ast,VT3.bio,VT3.biv,VT3.biv.b,
                               VT3.cau,VT3.cca,VT3.cem,VT3.cor,VT3.cor.a,VT3.fav,VT3.glau,VT3.hyd,VT3.mon,VT3.pav,VT3.pd,
                               VT3.por,VT3.sed,VT3.sha,VT3.sid,VT3.sty,VT3.tar)


#write.xlsx(x = VT3.data,"VT3.xlsx")





#-------------------------------------------------------------------------
# VT4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
VT4<-nrow(line %>% filter(transect_id %in% "VT4"))
#amount Actinacis
VT4.act<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Actinacis"))*100)/VT4
#amount Astreopora
VT4.ast<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Astreopora"))*100)/VT4
#amount Bioclastic
VT4.bio<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Bioclastic sediment"))*100)/VT4
#amount Bivalve
VT4.biv<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Bivalve"))*100)/VT4
#amount Bivalve boring
VT4.biv.b<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Bivalve boring"))*100)/VT4
#amount Caulastrea
VT4.cau<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Caulastrea"))*100)/VT4
#amount CCA
VT4.cca<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "CCA"))*100)/VT4
#amount Cement
VT4.cem<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Cement"))*100)/VT4
#amount Coral
VT4.cor<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Coral"))*100)/VT4
#amount Coralline algae
VT4.cor.a<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Coralline algae"))*100)/VT4
#amount Favites
VT4.fav<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Favites"))*100)/VT4
#amount Glauconite
VT4.glau<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Glauconite"))*100)/VT4
#amount Hydnophora
VT4.hyd<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Hydnophora"))*100)/VT4
#amount Montastrea
VT4.mon<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Montastrea"))*100)/VT4
#amount Pavona
VT4.pav<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Pavona"))*100)/VT4
#amount Porites
VT4.por<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Porites"))*100)/VT4
#amount Poriticae
VT4.pd<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Poriticae"))*100)/VT4
#amount Sediment
VT4.sed<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Sediment"))*100)/VT4
#amount Shale
VT4.sha<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Shale"))*100)/VT4
#amount Siderastrea
VT4.sid<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Siderastrea"))*100)/VT4
#amount Stylophora
VT4.sty<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Stylophora"))*100)/VT4
#amount Tarbellastraea
VT4.tar<-(nrow(line %>% filter(transect_id == "VT4" & point_id == "Tarbellastraea"))*100)/VT4


VT4.data<-data.frame(VT4,VT4.act, VT4.ast,VT4.bio,VT4.biv,VT4.biv.b,
                               VT4.cau,VT4.cca,VT4.cem,VT4.cor,VT4.cor.a,VT4.fav,VT4.glau,VT4.hyd,VT4.mon,VT4.pav,VT4.pd,
                               VT4.por,VT4.sed,VT4.sha,VT4.sid,VT4.sty,VT4.tar)


#write.xlsx(x = VT4.data,"VT4.xlsx")















# Santa Cesarea -----------------------------------------------------------
#--------------------------------------------------------------------------
# SCT1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
SCT1<-nrow(line %>% filter(transect_id %in% "SCT1"))
#amount Actinacis
SCT1.act<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Actinacis"))*100)/SCT1
#amount Astreopora
SCT1.ast<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Astreopora"))*100)/SCT1
#amount Bioclastic
SCT1.bio<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Bioclastic sediment"))*100)/SCT1
#amount Bivalve
SCT1.biv<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Bivalve"))*100)/SCT1
#amount Bivalve boring
SCT1.biv.b<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Bivalve boring"))*100)/SCT1
#amount Caulastrea
SCT1.cau<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Caulastrea"))*100)/SCT1
#amount CCA
SCT1.cca<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "CCA"))*100)/SCT1
#amount Cement
SCT1.cem<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Cement"))*100)/SCT1
#amount Coral
SCT1.cor<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Coral"))*100)/SCT1
#amount Coralline algae
SCT1.cor.a<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Coralline algae"))*100)/SCT1
#amount Favites
SCT1.fav<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Favites"))*100)/SCT1
#amount Glauconite
SCT1.glau<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Glauconite"))*100)/SCT1
#amount Hydnophora
SCT1.hyd<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Hydnophora"))*100)/SCT1
#amount Montastrea
SCT1.mon<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Montastrea"))*100)/SCT1
#amount Pavona
SCT1.pav<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Pavona"))*100)/SCT1
#amount Porites
SCT1.por<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Porites"))*100)/SCT1
#amount Poriticae
SCT1.pd<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Poriticae"))*100)/SCT1
#amount Sediment
SCT1.sed<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Sediment"))*100)/SCT1
#amount Shale
SCT1.sha<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Shale"))*100)/SCT1
#amount Siderastrea
SCT1.sid<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Siderastrea"))*100)/SCT1
#amount Stylophora
SCT1.sty<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Stylophora"))*100)/SCT1
#amount Tarbellastraea
SCT1.tar<-(nrow(line %>% filter(transect_id == "SCT1" & point_id == "Tarbellastraea"))*100)/SCT1


SCT1.data<-data.frame(SCT1,SCT1.act, SCT1.ast,SCT1.bio,SCT1.biv,SCT1.biv.b,
                     SCT1.cau,SCT1.cca,SCT1.cem,SCT1.cor,SCT1.cor.a,SCT1.fav,SCT1.glau,SCT1.hyd,SCT1.mon,SCT1.pav,SCT1.pd,
                     SCT1.por,SCT1.sed,SCT1.sha,SCT1.sid,SCT1.sty,SCT1.tar)

#write.xlsx(x = SCT1.data,"SCT1.xlsx")


#--------------------------------------------------------------------------
# SCT2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#amount total
SCT2<-nrow(line %>% filter(transect_id %in% "SCT2"))
#amount Actinacis
SCT2.act<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Actinacis"))*100)/SCT2
#amount Astreopora
SCT2.ast<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Astreopora"))*100)/SCT2
#amount Bioclastic
SCT2.bio<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Bioclastic sediment"))*100)/SCT2
#amount Bivalve
SCT2.biv<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Bivalve"))*100)/SCT2
#amount Bivalve boring
SCT2.biv.b<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Bivalve boring"))*100)/SCT2
#amount Caulastrea
SCT2.cau<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Caulastrea"))*100)/SCT2
#amount CCA
SCT2.cca<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "CCA"))*100)/SCT2
#amount Cement
SCT2.cem<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Cement"))*100)/SCT2
#amount Coral
SCT2.cor<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Coral"))*100)/SCT2
#amount Coralline algae
SCT2.cor.a<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Coralline algae"))*100)/SCT2
#amount Favites
SCT2.fav<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Favites"))*100)/SCT2
#amount Glauconite
SCT2.glau<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Glauconite"))*100)/SCT2
#amount Hydnophora
SCT2.hyd<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Hydnophora"))*100)/SCT2
#amount Montastrea
SCT2.mon<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Montastrea"))*100)/SCT2
#amount Pavona
SCT2.pav<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Pavona"))*100)/SCT2
#amount Porites
SCT2.por<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Porites"))*100)/SCT2
#amount Poriticae
SCT2.pd<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Poriticae"))*100)/SCT2
#amount Sediment
SCT2.sed<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Sediment"))*100)/SCT2
#amount Shale
SCT2.sha<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Shale"))*100)/SCT2
#amount Siderastrea
SCT2.sid<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Siderastrea"))*100)/SCT2
#amount Stylophora
SCT2.sty<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Stylophora"))*100)/SCT2
#amount Tarbellastraea
SCT2.tar<-(nrow(line %>% filter(transect_id == "SCT2" & point_id == "Tarbellastraea"))*100)/SCT2


SCT2.data<-data.frame(SCT2,SCT2.act, SCT2.ast,SCT2.bio,SCT2.biv,SCT2.biv.b,
                     SCT2.cau,SCT2.cca,SCT2.cem,SCT2.cor,SCT2.cor.a,SCT2.fav,SCT2.glau,SCT2.hyd,SCT2.mon,SCT2.pav,SCT2.pd,
                     SCT2.por,SCT2.sed,SCT2.sha,SCT2.sid,SCT2.sty,SCT2.tar)


#write.xlsx(x = SCT2.data,"SCT2.xlsx")



#-------------------------------------------------------------------------
# SCT3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT3<-nrow(line %>% filter(transect_id %in% "SCT3"))
#amount Actinacis
SCT3.act<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Actinacis"))*100)/SCT3
#amount Astreopora
SCT3.ast<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Astreopora"))*100)/SCT3
#amount Bioclastic
SCT3.bio<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Bioclastic sediment"))*100)/SCT3
#amount Bivalve
SCT3.biv<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Bivalve"))*100)/SCT3
#amount Bivalve boring
SCT3.biv.b<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Bivalve boring"))*100)/SCT3
#amount Caulastrea
SCT3.cau<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Caulastrea"))*100)/SCT3
#amount CCA
SCT3.cca<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "CCA"))*100)/SCT3
#amount Cement
SCT3.cem<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Cement"))*100)/SCT3
#amount Coral
SCT3.cor<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Coral"))*100)/SCT3
#amount Coralline algae
SCT3.cor.a<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Coralline algae"))*100)/SCT3
#amount Favites
SCT3.fav<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Favites"))*100)/SCT3
#amount Glauconite
SCT3.glau<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Glauconite"))*100)/SCT3
#amount Hydnophora
SCT3.hyd<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Hydnophora"))*100)/SCT3
#amount Montastrea
SCT3.mon<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Montastrea"))*100)/SCT3
#amount Pavona
SCT3.pav<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Pavona"))*100)/SCT3
#amount Porites
SCT3.por<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Porites"))*100)/SCT3
#amount Poriticae
SCT3.pd<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Poriticae"))*100)/SCT3
#amount Sediment
SCT3.sed<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Sediment"))*100)/SCT3
#amount Shale
SCT3.sha<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Shale"))*100)/SCT3
#amount Siderastrea
SCT3.sid<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Siderastrea"))*100)/SCT3
#amount Stylophora
SCT3.sty<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Stylophora"))*100)/SCT3
#amount Tarbellastraea
SCT3.tar<-(nrow(line %>% filter(transect_id == "SCT3" & point_id == "Tarbellastraea"))*100)/SCT3


SCT3.data<-data.frame(SCT3,SCT3.act, SCT3.ast,SCT3.bio,SCT3.biv,SCT3.biv.b,
                               SCT3.cau,SCT3.cca,SCT3.cem,SCT3.cor,SCT3.cor.a,SCT3.fav,SCT3.glau,SCT3.hyd,SCT3.mon,SCT3.pav,SCT3.pd,
                               SCT3.por,SCT3.sed,SCT3.sha,SCT3.sid,SCT3.sty,SCT3.tar)


#write.xlsx(x = SCT3.data,"SCT3.xlsx")





#-------------------------------------------------------------------------
# SCT4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT4<-nrow(line %>% filter(transect_id %in% "SCT4"))
#amount Actinacis
SCT4.act<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Actinacis"))*100)/SCT4
#amount Astreopora
SCT4.ast<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Astreopora"))*100)/SCT4
#amount Bioclastic
SCT4.bio<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Bioclastic sediment"))*100)/SCT4
#amount Bivalve
SCT4.biv<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Bivalve"))*100)/SCT4
#amount Bivalve boring
SCT4.biv.b<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Bivalve boring"))*100)/SCT4
#amount Caulastrea
SCT4.cau<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Caulastrea"))*100)/SCT4
#amount CCA
SCT4.cca<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "CCA"))*100)/SCT4
#amount Cement
SCT4.cem<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Cement"))*100)/SCT4
#amount Coral
SCT4.cor<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Coral"))*100)/SCT4
#amount Coralline algae
SCT4.cor.a<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Coralline algae"))*100)/SCT4
#amount Favites
SCT4.fav<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Favites"))*100)/SCT4
#amount Glauconite
SCT4.glau<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Glauconite"))*100)/SCT4
#amount Hydnophora
SCT4.hyd<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Hydnophora"))*100)/SCT4
#amount Montastrea
SCT4.mon<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Montastrea"))*100)/SCT4
#amount Pavona
SCT4.pav<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Pavona"))*100)/SCT4
#amount Porites
SCT4.por<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Porites"))*100)/SCT4
#amount Poriticae
SCT4.pd<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Poriticae"))*100)/SCT4
#amount Sediment
SCT4.sed<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Sediment"))*100)/SCT4
#amount Shale
SCT4.sha<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Shale"))*100)/SCT4
#amount Siderastrea
SCT4.sid<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Siderastrea"))*100)/SCT4
#amount Stylophora
SCT4.sty<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Stylophora"))*100)/SCT4
#amount Tarbellastraea
SCT4.tar<-(nrow(line %>% filter(transect_id == "SCT4" & point_id == "Tarbellastraea"))*100)/SCT4


SCT4.data<-data.frame(SCT4,SCT4.act, SCT4.ast,SCT4.bio,SCT4.biv,SCT4.biv.b,
                     SCT4.cau,SCT4.cca,SCT4.cem,SCT4.cor,SCT4.cor.a,SCT4.fav,SCT4.glau,SCT4.hyd,SCT4.mon,SCT4.pav,SCT4.pd,
                     SCT4.por,SCT4.sed,SCT4.sha,SCT4.sid,SCT4.sty,SCT4.tar)


#write.xlsx(x = SCT4.data,"SCT4.xlsx")



#-------------------------------------------------------------------------
# SCT5 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT5<-nrow(line %>% filter(transect_id %in% "SCT5"))
#amount Actinacis
SCT5.act<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Actinacis"))*100)/SCT5
#amount Astreopora
SCT5.ast<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Astreopora"))*100)/SCT5
#amount Bioclastic
SCT5.bio<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Bioclastic sediment"))*100)/SCT5
#amount Bivalve
SCT5.biv<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Bivalve"))*100)/SCT5
#amount Bivalve boring
SCT5.biv.b<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Bivalve boring"))*100)/SCT5
#amount Caulastrea
SCT5.cau<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Caulastrea"))*100)/SCT5
#amount CCA
SCT5.cca<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "CCA"))*100)/SCT5
#amount Cement
SCT5.cem<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Cement"))*100)/SCT5
#amount Coral
SCT5.cor<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Coral"))*100)/SCT5
#amount Coralline algae
SCT5.cor.a<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Coralline algae"))*100)/SCT5
#amount Favites
SCT5.fav<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Favites"))*100)/SCT5
#amount Glauconite
SCT5.glau<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Glauconite"))*100)/SCT5
#amount Hydnophora
SCT5.hyd<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Hydnophora"))*100)/SCT5
#amount Montastrea
SCT5.mon<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Montastrea"))*100)/SCT5
#amount Pavona
SCT5.pav<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Pavona"))*100)/SCT5
#amount Porites
SCT5.por<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Porites"))*100)/SCT5
#amount Poriticae
SCT5.pd<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Poriticae"))*100)/SCT5
#amount Sediment
SCT5.sed<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Sediment"))*100)/SCT5
#amount Shale
SCT5.sha<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Shale"))*100)/SCT5
#amount Siderastrea
SCT5.sid<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Siderastrea"))*100)/SCT5
#amount Stylophora
SCT5.sty<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Stylophora"))*100)/SCT5
#amount Tarbellastraea
SCT5.tar<-(nrow(line %>% filter(transect_id == "SCT5" & point_id == "Tarbellastraea"))*100)/SCT5


SCT5.data<-data.frame(SCT5,SCT5.act, SCT5.ast,SCT5.bio,SCT5.biv,SCT5.biv.b,
                      SCT5.cau,SCT5.cca,SCT5.cem,SCT5.cor,SCT5.cor.a,SCT5.fav,SCT5.glau,SCT5.hyd,SCT5.mon,SCT5.pav,SCT5.pd,
                      SCT5.por,SCT5.sed,SCT5.sha,SCT5.sid,SCT5.sty,SCT5.tar)


#write.xlsx(x = SCT5.data,"SCT5.xlsx")





#-------------------------------------------------------------------------
# SCT6 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT6<-nrow(line %>% filter(transect_id %in% "SCT6"))
#amount Actinacis
SCT6.act<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Actinacis"))*100)/SCT6
#amount Astreopora
SCT6.ast<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Astreopora"))*100)/SCT6
#amount Bioclastic
SCT6.bio<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Bioclastic sediment"))*100)/SCT6
#amount Bivalve
SCT6.biv<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Bivalve"))*100)/SCT6
#amount Bivalve boring
SCT6.biv.b<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Bivalve boring"))*100)/SCT6
#amount Caulastrea
SCT6.cau<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Caulastrea"))*100)/SCT6
#amount CCA
SCT6.cca<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "CCA"))*100)/SCT6
#amount Cement
SCT6.cem<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Cement"))*100)/SCT6
#amount Coral
SCT6.cor<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Coral"))*100)/SCT6
#amount Coralline algae
SCT6.cor.a<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Coralline algae"))*100)/SCT6
#amount Favites
SCT6.fav<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Favites"))*100)/SCT6
#amount Glauconite
SCT6.glau<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Glauconite"))*100)/SCT6
#amount Hydnophora
SCT6.hyd<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Hydnophora"))*100)/SCT6
#amount Montastrea
SCT6.mon<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Montastrea"))*100)/SCT6
#amount Pavona
SCT6.pav<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Pavona"))*100)/SCT6
#amount Porites
SCT6.por<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Porites"))*100)/SCT6
#amount Poriticae
SCT6.pd<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Poriticae"))*100)/SCT6
#amount Sediment
SCT6.sed<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Sediment"))*100)/SCT6
#amount Shale
SCT6.sha<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Shale"))*100)/SCT6
#amount Siderastrea
SCT6.sid<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Siderastrea"))*100)/SCT6
#amount Stylophora
SCT6.sty<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Stylophora"))*100)/SCT6
#amount Tarbellastraea
SCT6.tar<-(nrow(line %>% filter(transect_id == "SCT6" & point_id == "Tarbellastraea"))*100)/SCT6


SCT6.data<-data.frame(SCT6,SCT6.act, SCT6.ast,SCT6.bio,SCT6.biv,SCT6.biv.b,
                      SCT6.cau,SCT6.cca,SCT6.cem,SCT6.cor,SCT6.cor.a,SCT6.fav,SCT6.glau,SCT6.hyd,SCT6.mon,SCT6.pav,SCT6.pd,
                      SCT6.por,SCT6.sed,SCT6.sha,SCT6.sid,SCT6.sty,SCT6.tar)


#write.xlsx(x = SCT6.data,"SCT6.xlsx")




#-------------------------------------------------------------------------
# SCT7 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT7<-nrow(line %>% filter(transect_id %in% "SCT7"))
#amount Actinacis
SCT7.act<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Actinacis"))*100)/SCT7
#amount Astreopora
SCT7.ast<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Astreopora"))*100)/SCT7
#amount Bioclastic
SCT7.bio<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Bioclastic sediment"))*100)/SCT7
#amount Bivalve
SCT7.biv<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Bivalve"))*100)/SCT7
#amount Bivalve boring
SCT7.biv.b<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Bivalve boring"))*100)/SCT7
#amount Caulastrea
SCT7.cau<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Caulastrea"))*100)/SCT7
#amount CCA
SCT7.cca<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "CCA"))*100)/SCT7
#amount Cement
SCT7.cem<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Cement"))*100)/SCT7
#amount Coral
SCT7.cor<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Coral"))*100)/SCT7
#amount Coralline algae
SCT7.cor.a<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Coralline algae"))*100)/SCT7
#amount Favites
SCT7.fav<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Favites"))*100)/SCT7
#amount Glauconite
SCT7.glau<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Glauconite"))*100)/SCT7
#amount Hydnophora
SCT7.hyd<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Hydnophora"))*100)/SCT7
#amount Montastrea
SCT7.mon<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Montastrea"))*100)/SCT7
#amount Pavona
SCT7.pav<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Pavona"))*100)/SCT7
#amount Porites
SCT7.por<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Porites"))*100)/SCT7
#amount Poriticae
SCT7.pd<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Poriticae"))*100)/SCT7
#amount Sediment
SCT7.sed<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Sediment"))*100)/SCT7
#amount Shale
SCT7.sha<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Shale"))*100)/SCT7
#amount Siderastrea
SCT7.sid<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Siderastrea"))*100)/SCT7
#amount Stylophora
SCT7.sty<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Stylophora"))*100)/SCT7
#amount Tarbellastraea
SCT7.tar<-(nrow(line %>% filter(transect_id == "SCT7" & point_id == "Tarbellastraea"))*100)/SCT7


SCT7.data<-data.frame(SCT7,SCT7.act, SCT7.ast,SCT7.bio,SCT7.biv,SCT7.biv.b,
                      SCT7.cau,SCT7.cca,SCT7.cem,SCT7.cor,SCT7.cor.a,SCT7.fav,SCT7.glau,SCT7.hyd,SCT7.mon,SCT7.pav,SCT7.pd,
                      SCT7.por,SCT7.sed,SCT7.sha,SCT7.sid,SCT7.sty,SCT7.tar)


#write.xlsx(x = SCT7.data,"SCT7.xlsx")





#-------------------------------------------------------------------------
# SCT8 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
SCT8<-nrow(line %>% filter(transect_id %in% "SCT8"))
#amount Actinacis
SCT8.act<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Actinacis"))*100)/SCT8
#amount Astreopora
SCT8.ast<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Astreopora"))*100)/SCT8
#amount Bioclastic
SCT8.bio<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Bioclastic sediment"))*100)/SCT8
#amount Bivalve
SCT8.biv<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Bivalve"))*100)/SCT8
#amount Bivalve boring
SCT8.biv.b<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Bivalve boring"))*100)/SCT8
#amount Caulastrea
SCT8.cau<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Caulastrea"))*100)/SCT8
#amount CCA
SCT8.cca<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "CCA"))*100)/SCT8
#amount Cement
SCT8.cem<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Cement"))*100)/SCT8
#amount Coral
SCT8.cor<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Coral"))*100)/SCT8
#amount Coralline algae
SCT8.cor.a<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Coralline algae"))*100)/SCT8
#amount Favites
SCT8.fav<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Favites"))*100)/SCT8
#amount Glauconite
SCT8.glau<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Glauconite"))*100)/SCT8
#amount Hydnophora
SCT8.hyd<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Hydnophora"))*100)/SCT8
#amount Montastrea
SCT8.mon<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Montastrea"))*100)/SCT8
#amount Pavona
SCT8.pav<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Pavona"))*100)/SCT8
#amount Porites
SCT8.por<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Porites"))*100)/SCT8
#amount Poriticae
SCT8.pd<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Poriticae"))*100)/SCT8
#amount Sediment
SCT8.sed<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Sediment"))*100)/SCT8
#amount Shale
SCT8.sha<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Shale"))*100)/SCT8
#amount Siderastrea
SCT8.sid<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Siderastrea"))*100)/SCT8
#amount Stylophora
SCT8.sty<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Stylophora"))*100)/SCT8
#amount Tarbellastraea
SCT8.tar<-(nrow(line %>% filter(transect_id == "SCT8" & point_id == "Tarbellastraea"))*100)/SCT8


SCT8.data<-data.frame(SCT8,SCT8.act, SCT8.ast,SCT8.bio,SCT8.biv,SCT8.biv.b,
                      SCT8.cau,SCT8.cca,SCT8.cem,SCT8.cor,SCT8.cor.a,SCT8.fav,SCT8.glau,SCT8.hyd,SCT8.mon,SCT8.pav,SCT8.pd,
                      SCT8.por,SCT8.sed,SCT8.sha,SCT8.sid,SCT8.sty,SCT8.tar)


#write.xlsx(x = SCT8.data,"SCT8.xlsx")




# Leuca -----------------------------------------------------------
#--------------------------------------------------------------------------
# PML1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
PML1<-nrow(line %>% filter(transect_id %in% "PML1"))
#amount Actinacis
PML1.act<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Actinacis"))*100)/PML1
#amount Astreopora
PML1.ast<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Astreopora"))*100)/PML1
#amount Bioclastic
PML1.bio<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Bioclastic sediment"))*100)/PML1
#amount Bivalve
PML1.biv<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Bivalve"))*100)/PML1
#amount Bivalve boring
PML1.biv.b<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Bivalve boring"))*100)/PML1
#amount Caulastrea
PML1.cau<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Caulastrea"))*100)/PML1
#amount CCA
PML1.cca<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "CCA"))*100)/PML1
#amount Cement
PML1.cem<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Cement"))*100)/PML1
#amount Coral
PML1.cor<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Coral"))*100)/PML1
#amount Coralline algae
PML1.cor.a<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Coralline algae"))*100)/PML1
#amount Favites
PML1.fav<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Favites"))*100)/PML1
#amount Glauconite
PML1.glau<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Glauconite"))*100)/PML1
#amount Hydnophora
PML1.hyd<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Hydnophora"))*100)/PML1
#amount Montastrea
PML1.mon<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Montastrea"))*100)/PML1
#amount Pavona
PML1.pav<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Pavona"))*100)/PML1
#amount Porites
PML1.por<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Porites"))*100)/PML1
#amount Poriticae
PML1.pd<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Poriticae"))*100)/PML1
#amount Sediment
PML1.sed<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Sediment"))*100)/PML1
#amount Shale
PML1.sha<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Shale"))*100)/PML1
#amount Siderastrea
PML1.sid<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Siderastrea"))*100)/PML1
#amount Stylophora
PML1.sty<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Stylophora"))*100)/PML1
#amount Tarbellastraea
PML1.tar<-(nrow(line %>% filter(transect_id == "PML1" & point_id == "Tarbellastraea"))*100)/PML1


PML1.data<-data.frame(PML1,PML1.act, PML1.ast,PML1.bio,PML1.biv,PML1.biv.b,
                      PML1.cau,PML1.cca,PML1.cem,PML1.cor,PML1.cor.a,PML1.fav,PML1.glau,PML1.hyd,PML1.mon,PML1.pav,PML1.pd,
                      PML1.por,PML1.sed,PML1.sha,PML1.sid,PML1.sty,PML1.tar)

#write.xlsx(x = PML1.data,"PML1.xlsx")


#--------------------------------------------------------------------------
# PML2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#amount total
PML2<-nrow(line %>% filter(transect_id %in% "PML2"))
#amount Actinacis
PML2.act<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Actinacis"))*100)/PML2
#amount Astreopora
PML2.ast<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Astreopora"))*100)/PML2
#amount Bioclastic
PML2.bio<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Bioclastic sediment"))*100)/PML2
#amount Bivalve
PML2.biv<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Bivalve"))*100)/PML2
#amount Bivalve boring
PML2.biv.b<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Bivalve boring"))*100)/PML2
#amount Caulastrea
PML2.cau<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Caulastrea"))*100)/PML2
#amount CCA
PML2.cca<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "CCA"))*100)/PML2
#amount Cement
PML2.cem<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Cement"))*100)/PML2
#amount Coral
PML2.cor<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Coral"))*100)/PML2
#amount Coralline algae
PML2.cor.a<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Coralline algae"))*100)/PML2
#amount Favites
PML2.fav<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Favites"))*100)/PML2
#amount Glauconite
PML2.glau<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Glauconite"))*100)/PML2
#amount Hydnophora
PML2.hyd<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Hydnophora"))*100)/PML2
#amount Montastrea
PML2.mon<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Montastrea"))*100)/PML2
#amount Pavona
PML2.pav<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Pavona"))*100)/PML2
#amount Porites
PML2.por<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Porites"))*100)/PML2
#amount Poriticae
PML2.pd<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Poriticae"))*100)/PML2
#amount Sediment
PML2.sed<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Sediment"))*100)/PML2
#amount Shale
PML2.sha<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Shale"))*100)/PML2
#amount Siderastrea
PML2.sid<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Siderastrea"))*100)/PML2
#amount Stylophora
PML2.sty<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Stylophora"))*100)/PML2
#amount Tarbellastraea
PML2.tar<-(nrow(line %>% filter(transect_id == "PML2" & point_id == "Tarbellastraea"))*100)/PML2


PML2.data<-data.frame(PML2,PML2.act, PML2.ast,PML2.bio,PML2.biv,PML2.biv.b,
                      PML2.cau,PML2.cca,PML2.cem,PML2.cor,PML2.cor.a,PML2.fav,PML2.glau,PML2.hyd,PML2.mon,PML2.pav,PML2.pd,
                      PML2.por,PML2.sed,PML2.sha,PML2.sid,PML2.sty,PML2.tar)


#write.xlsx(x = PML2.data,"PML2.xlsx")



#-------------------------------------------------------------------------
# PML3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
PML3<-nrow(line %>% filter(transect_id %in% "PML3"))
#amount Actinacis
PML3.act<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Actinacis"))*100)/PML3
#amount Astreopora
PML3.ast<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Astreopora"))*100)/PML3
#amount Bioclastic
PML3.bio<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Bioclastic sediment"))*100)/PML3
#amount Bivalve
PML3.biv<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Bivalve"))*100)/PML3
#amount Bivalve boring
PML3.biv.b<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Bivalve boring"))*100)/PML3
#amount Caulastrea
PML3.cau<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Caulastrea"))*100)/PML3
#amount CCA
PML3.cca<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "CCA"))*100)/PML3
#amount Cement
PML3.cem<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Cement"))*100)/PML3
#amount Coral
PML3.cor<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Coral"))*100)/PML3
#amount Coralline algae
PML3.cor.a<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Coralline algae"))*100)/PML3
#amount Favites
PML3.fav<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Favites"))*100)/PML3
#amount Glauconite
PML3.glau<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Glauconite"))*100)/PML3
#amount Hydnophora
PML3.hyd<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Hydnophora"))*100)/PML3
#amount Montastrea
PML3.mon<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Montastrea"))*100)/PML3
#amount Pavona
PML3.pav<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Pavona"))*100)/PML3
#amount Porites
PML3.por<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Porites"))*100)/PML3
#amount Poriticae
PML3.pd<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Poriticae"))*100)/PML3
#amount Sediment
PML3.sed<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Sediment"))*100)/PML3
#amount Shale
PML3.sha<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Shale"))*100)/PML3
#amount Siderastrea
PML3.sid<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Siderastrea"))*100)/PML3
#amount Stylophora
PML3.sty<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Stylophora"))*100)/PML3
#amount Tarbellastraea
PML3.tar<-(nrow(line %>% filter(transect_id == "PML3" & point_id == "Tarbellastraea"))*100)/PML3


PML3.data<-data.frame(PML3,PML3.act, PML3.ast,PML3.bio,PML3.biv,PML3.biv.b,
                      PML3.cau,PML3.cca,PML3.cem,PML3.cor,PML3.cor.a,PML3.fav,PML3.glau,PML3.hyd,PML3.mon,PML3.pav,PML3.pd,
                      PML3.por,PML3.sed,PML3.sha,PML3.sid,PML3.sty,PML3.tar)


#write.xlsx(x = PML3.data,"PML3.xlsx")





#-------------------------------------------------------------------------
# PML4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
PML4<-nrow(line %>% filter(transect_id %in% "PML4"))
#amount Actinacis
PML4.act<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Actinacis"))*100)/PML4
#amount Astreopora
PML4.ast<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Astreopora"))*100)/PML4
#amount Bioclastic
PML4.bio<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Bioclastic sediment"))*100)/PML4
#amount Bivalve
PML4.biv<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Bivalve"))*100)/PML4
#amount Bivalve boring
PML4.biv.b<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Bivalve boring"))*100)/PML4
#amount Caulastrea
PML4.cau<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Caulastrea"))*100)/PML4
#amount CCA
PML4.cca<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "CCA"))*100)/PML4
#amount Cement
PML4.cem<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Cement"))*100)/PML4
#amount Coral
PML4.cor<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Coral"))*100)/PML4
#amount Coralline algae
PML4.cor.a<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Coralline algae"))*100)/PML4
#amount Favites
PML4.fav<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Favites"))*100)/PML4
#amount Glauconite
PML4.glau<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Glauconite"))*100)/PML4
#amount Hydnophora
PML4.hyd<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Hydnophora"))*100)/PML4
#amount Montastrea
PML4.mon<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Montastrea"))*100)/PML4
#amount Pavona
PML4.pav<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Pavona"))*100)/PML4
#amount Porites
PML4.por<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Porites"))*100)/PML4
#amount Poriticae
PML4.pd<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Poriticae"))*100)/PML4
#amount Sediment
PML4.sed<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Sediment"))*100)/PML4
#amount Shale
PML4.sha<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Shale"))*100)/PML4
#amount Siderastrea
PML4.sid<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Siderastrea"))*100)/PML4
#amount Stylophora
PML4.sty<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Stylophora"))*100)/PML4
#amount Tarbellastraea
PML4.tar<-(nrow(line %>% filter(transect_id == "PML4" & point_id == "Tarbellastraea"))*100)/PML4


PML4.data<-data.frame(PML4,PML4.act, PML4.ast,PML4.bio,PML4.biv,PML4.biv.b,
                      PML4.cau,PML4.cca,PML4.cem,PML4.cor,PML4.cor.a,PML4.fav,PML4.glau,PML4.hyd,PML4.mon,PML4.pav,PML4.pd,
                      PML4.por,PML4.sed,PML4.sha,PML4.sid,PML4.sty,PML4.tar)


#write.xlsx(x = PML4.data,"PML4.xlsx")



#-------------------------------------------------------------------------
# PML5 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
PML5<-nrow(line %>% filter(transect_id %in% "PML5"))
#amount Actinacis
PML5.act<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Actinacis"))*100)/PML5
#amount Astreopora
PML5.ast<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Astreopora"))*100)/PML5
#amount Bioclastic
PML5.bio<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Bioclastic sediment"))*100)/PML5
#amount Bivalve
PML5.biv<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Bivalve"))*100)/PML5
#amount Bivalve boring
PML5.biv.b<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Bivalve boring"))*100)/PML5
#amount Caulastrea
PML5.cau<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Caulastrea"))*100)/PML5
#amount CCA
PML5.cca<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "CCA"))*100)/PML5
#amount Cement
PML5.cem<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Cement"))*100)/PML5
#amount Coral
PML5.cor<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Coral"))*100)/PML5
#amount Coralline algae
PML5.cor.a<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Coralline algae"))*100)/PML5
#amount Favites
PML5.fav<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Favites"))*100)/PML5
#amount Glauconite
PML5.glau<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Glauconite"))*100)/PML5
#amount Hydnophora
PML5.hyd<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Hydnophora"))*100)/PML5
#amount Montastrea
PML5.mon<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Montastrea"))*100)/PML5
#amount Pavona
PML5.pav<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Pavona"))*100)/PML5
#amount Porites
PML5.por<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Porites"))*100)/PML5
#amount Poriticae
PML5.pd<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Poriticae"))*100)/PML5
#amount Sediment
PML5.sed<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Sediment"))*100)/PML5
#amount Shale
PML5.sha<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Shale"))*100)/PML5
#amount Siderastrea
PML5.sid<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Siderastrea"))*100)/PML5
#amount Stylophora
PML5.sty<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Stylophora"))*100)/PML5
#amount Tarbellastraea
PML5.tar<-(nrow(line %>% filter(transect_id == "PML5" & point_id == "Tarbellastraea"))*100)/PML5


PML5.data<-data.frame(PML5,PML5.act, PML5.ast,PML5.bio,PML5.biv,PML5.biv.b,
                      PML5.cau,PML5.cca,PML5.cem,PML5.cor,PML5.cor.a,PML5.fav,PML5.glau,PML5.hyd,PML5.mon,PML5.pav,PML5.pd,
                      PML5.por,PML5.sed,PML5.sha,PML5.sid,PML5.sty,PML5.tar)


#write.xlsx(x = PML5.data,"PML5.xlsx")





#-------------------------------------------------------------------------
# PML6 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
PML6<-nrow(line %>% filter(transect_id %in% "PML6"))
#amount Actinacis
PML6.act<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Actinacis"))*100)/PML6
#amount Astreopora
PML6.ast<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Astreopora"))*100)/PML6
#amount Bioclastic
PML6.bio<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Bioclastic sediment"))*100)/PML6
#amount Bivalve
PML6.biv<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Bivalve"))*100)/PML6
#amount Bivalve boring
PML6.biv.b<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Bivalve boring"))*100)/PML6
#amount Caulastrea
PML6.cau<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Caulastrea"))*100)/PML6
#amount CCA
PML6.cca<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "CCA"))*100)/PML6
#amount Cement
PML6.cem<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Cement"))*100)/PML6
#amount Coral
PML6.cor<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Coral"))*100)/PML6
#amount Coralline algae
PML6.cor.a<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Coralline algae"))*100)/PML6
#amount Favites
PML6.fav<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Favites"))*100)/PML6
#amount Glauconite
PML6.glau<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Glauconite"))*100)/PML6
#amount Hydnophora
PML6.hyd<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Hydnophora"))*100)/PML6
#amount Montastrea
PML6.mon<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Montastrea"))*100)/PML6
#amount Pavona
PML6.pav<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Pavona"))*100)/PML6
#amount Porites
PML6.por<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Porites"))*100)/PML6
#amount Poriticae
PML6.pd<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Poriticae"))*100)/PML6
#amount Sediment
PML6.sed<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Sediment"))*100)/PML6
#amount Shale
PML6.sha<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Shale"))*100)/PML6
#amount Siderastrea
PML6.sid<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Siderastrea"))*100)/PML6
#amount Stylophora
PML6.sty<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Stylophora"))*100)/PML6
#amount Tarbellastraea
PML6.tar<-(nrow(line %>% filter(transect_id == "PML6" & point_id == "Tarbellastraea"))*100)/PML6


PML6.data<-data.frame(PML6,PML6.act, PML6.ast,PML6.bio,PML6.biv,PML6.biv.b,
                      PML6.cau,PML6.cca,PML6.cem,PML6.cor,PML6.cor.a,PML6.fav,PML6.glau,PML6.hyd,PML6.mon,PML6.pav,PML6.pd,
                      PML6.por,PML6.sed,PML6.sha,PML6.sid,PML6.sty,PML6.tar)


#write.xlsx(x = PML6.data,"PML6.xlsx")












# Leuca -----------------------------------------------------------
#--------------------------------------------------------------------------
# TL1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
TL1<-nrow(line %>% filter(transect_id %in% "TL1"))
#amount Actinacis
TL1.act<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Actinacis"))*100)/TL1
#amount Astreopora
TL1.ast<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Astreopora"))*100)/TL1
#amount Bioclastic
TL1.bio<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Bioclastic sediment"))*100)/TL1
#amount Bivalve
TL1.biv<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Bivalve"))*100)/TL1
#amount Bivalve boring
TL1.biv.b<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Bivalve boring"))*100)/TL1
#amount Caulastrea
TL1.cau<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Caulastrea"))*100)/TL1
#amount CCA
TL1.cca<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "CCA"))*100)/TL1
#amount Cement
TL1.cem<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Cement"))*100)/TL1
#amount Coral
TL1.cor<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Coral"))*100)/TL1
#amount Coralline algae
TL1.cor.a<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Coralline algae"))*100)/TL1
#amount Favites
TL1.fav<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Favites"))*100)/TL1
#amount Glauconite
TL1.glau<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Glauconite"))*100)/TL1
#amount Hydnophora
TL1.hyd<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Hydnophora"))*100)/TL1
#amount Montastrea
TL1.mon<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Montastrea"))*100)/TL1
#amount Pavona
TL1.pav<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Pavona"))*100)/TL1
#amount Porites
TL1.por<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Porites"))*100)/TL1
#amount Poriticae
TL1.pd<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Poriticae"))*100)/TL1
#amount Sediment
TL1.sed<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Sediment"))*100)/TL1
#amount Shale
TL1.sha<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Shale"))*100)/TL1
#amount Siderastrea
TL1.sid<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Siderastrea"))*100)/TL1
#amount Stylophora
TL1.sty<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Stylophora"))*100)/TL1
#amount Tarbellastraea
TL1.tar<-(nrow(line %>% filter(transect_id == "TL1" & point_id == "Tarbellastraea"))*100)/TL1


TL1.data<-data.frame(TL1,TL1.act, TL1.ast,TL1.bio,TL1.biv,TL1.biv.b,
                      TL1.cau,TL1.cca,TL1.cem,TL1.cor,TL1.cor.a,TL1.fav,TL1.glau,TL1.hyd,TL1.mon,TL1.pav,TL1.pd,
                      TL1.por,TL1.sed,TL1.sha,TL1.sid,TL1.sty,TL1.tar)

#write.xlsx(x = TL1.data,"TL1.xlsx")


#--------------------------------------------------------------------------
# TL2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#amount total
TL2<-nrow(line %>% filter(transect_id %in% "TL2"))
#amount Actinacis
TL2.act<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Actinacis"))*100)/TL2
#amount Astreopora
TL2.ast<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Astreopora"))*100)/TL2
#amount Bioclastic
TL2.bio<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Bioclastic sediment"))*100)/TL2
#amount Bivalve
TL2.biv<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Bivalve"))*100)/TL2
#amount Bivalve boring
TL2.biv.b<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Bivalve boring"))*100)/TL2
#amount Caulastrea
TL2.cau<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Caulastrea"))*100)/TL2
#amount CCA
TL2.cca<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "CCA"))*100)/TL2
#amount Cement
TL2.cem<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Cement"))*100)/TL2
#amount Coral
TL2.cor<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Coral"))*100)/TL2
#amount Coralline algae
TL2.cor.a<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Coralline algae"))*100)/TL2
#amount Favites
TL2.fav<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Favites"))*100)/TL2
#amount Glauconite
TL2.glau<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Glauconite"))*100)/TL2
#amount Hydnophora
TL2.hyd<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Hydnophora"))*100)/TL2
#amount Montastrea
TL2.mon<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Montastrea"))*100)/TL2
#amount Pavona
TL2.pav<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Pavona"))*100)/TL2
#amount Porites
TL2.por<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Porites"))*100)/TL2
#amount Poriticae
TL2.pd<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Poriticae"))*100)/TL2
#amount Sediment
TL2.sed<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Sediment"))*100)/TL2
#amount Shale
TL2.sha<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Shale"))*100)/TL2
#amount Siderastrea
TL2.sid<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Siderastrea"))*100)/TL2
#amount Stylophora
TL2.sty<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Stylophora"))*100)/TL2
#amount Tarbellastraea
TL2.tar<-(nrow(line %>% filter(transect_id == "TL2" & point_id == "Tarbellastraea"))*100)/TL2


TL2.data<-data.frame(TL2,TL2.act, TL2.ast,TL2.bio,TL2.biv,TL2.biv.b,
                      TL2.cau,TL2.cca,TL2.cem,TL2.cor,TL2.cor.a,TL2.fav,TL2.glau,TL2.hyd,TL2.mon,TL2.pav,TL2.pd,
                      TL2.por,TL2.sed,TL2.sha,TL2.sid,TL2.sty,TL2.tar)


#write.xlsx(x = TL2.data,"TL2.xlsx")



#-------------------------------------------------------------------------
# TL3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
TL3<-nrow(line %>% filter(transect_id %in% "TL3"))
#amount Actinacis
TL3.act<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Actinacis"))*100)/TL3
#amount Astreopora
TL3.ast<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Astreopora"))*100)/TL3
#amount Bioclastic
TL3.bio<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Bioclastic sediment"))*100)/TL3
#amount Bivalve
TL3.biv<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Bivalve"))*100)/TL3
#amount Bivalve boring
TL3.biv.b<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Bivalve boring"))*100)/TL3
#amount Caulastrea
TL3.cau<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Caulastrea"))*100)/TL3
#amount CCA
TL3.cca<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "CCA"))*100)/TL3
#amount Cement
TL3.cem<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Cement"))*100)/TL3
#amount Coral
TL3.cor<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Coral"))*100)/TL3
#amount Coralline algae
TL3.cor.a<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Coralline algae"))*100)/TL3
#amount Favites
TL3.fav<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Favites"))*100)/TL3
#amount Glauconite
TL3.glau<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Glauconite"))*100)/TL3
#amount Hydnophora
TL3.hyd<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Hydnophora"))*100)/TL3
#amount Montastrea
TL3.mon<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Montastrea"))*100)/TL3
#amount Pavona
TL3.pav<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Pavona"))*100)/TL3
#amount Porites
TL3.por<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Porites"))*100)/TL3
#amount Poriticae
TL3.pd<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Poriticae"))*100)/TL3
#amount Sediment
TL3.sed<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Sediment"))*100)/TL3
#amount Shale
TL3.sha<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Shale"))*100)/TL3
#amount Siderastrea
TL3.sid<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Siderastrea"))*100)/TL3
#amount Stylophora
TL3.sty<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Stylophora"))*100)/TL3
#amount Tarbellastraea
TL3.tar<-(nrow(line %>% filter(transect_id == "TL3" & point_id == "Tarbellastraea"))*100)/TL3


TL3.data<-data.frame(TL3,TL3.act, TL3.ast,TL3.bio,TL3.biv,TL3.biv.b,
                      TL3.cau,TL3.cca,TL3.cem,TL3.cor,TL3.cor.a,TL3.fav,TL3.glau,TL3.hyd,TL3.mon,TL3.pav,TL3.pd,
                      TL3.por,TL3.sed,TL3.sha,TL3.sid,TL3.sty,TL3.tar)


#write.xlsx(x = TL3.data,"TL3.xlsx")





#-------------------------------------------------------------------------
# TL4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
TL4<-nrow(line %>% filter(transect_id %in% "TL4"))
#amount Actinacis
TL4.act<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Actinacis"))*100)/TL4
#amount Astreopora
TL4.ast<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Astreopora"))*100)/TL4
#amount Bioclastic
TL4.bio<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Bioclastic sediment"))*100)/TL4
#amount Bivalve
TL4.biv<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Bivalve"))*100)/TL4
#amount Bivalve boring
TL4.biv.b<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Bivalve boring"))*100)/TL4
#amount Caulastrea
TL4.cau<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Caulastrea"))*100)/TL4
#amount CCA
TL4.cca<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "CCA"))*100)/TL4
#amount Cement
TL4.cem<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Cement"))*100)/TL4
#amount Coral
TL4.cor<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Coral"))*100)/TL4
#amount Coralline algae
TL4.cor.a<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Coralline algae"))*100)/TL4
#amount Favites
TL4.fav<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Favites"))*100)/TL4
#amount Glauconite
TL4.glau<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Glauconite"))*100)/TL4
#amount Hydnophora
TL4.hyd<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Hydnophora"))*100)/TL4
#amount Montastrea
TL4.mon<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Montastrea"))*100)/TL4
#amount Pavona
TL4.pav<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Pavona"))*100)/TL4
#amount Porites
TL4.por<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Porites"))*100)/TL4
#amount Poriticae
TL4.pd<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Poriticae"))*100)/TL4
#amount Sediment
TL4.sed<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Sediment"))*100)/TL4
#amount Shale
TL4.sha<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Shale"))*100)/TL4
#amount Siderastrea
TL4.sid<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Siderastrea"))*100)/TL4
#amount Stylophora
TL4.sty<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Stylophora"))*100)/TL4
#amount Tarbellastraea
TL4.tar<-(nrow(line %>% filter(transect_id == "TL4" & point_id == "Tarbellastraea"))*100)/TL4


TL4.data<-data.frame(TL4,TL4.act, TL4.ast,TL4.bio,TL4.biv,TL4.biv.b,
                      TL4.cau,TL4.cca,TL4.cem,TL4.cor,TL4.cor.a,TL4.fav,TL4.glau,TL4.hyd,TL4.mon,TL4.pav,TL4.pd,
                      TL4.por,TL4.sed,TL4.sha,TL4.sid,TL4.sty,TL4.tar)


#write.xlsx(x = TL4.data,"TL4.xlsx")



#-------------------------------------------------------------------------
# TL5 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
TL5<-nrow(line %>% filter(transect_id %in% "TL5"))
#amount Actinacis
TL5.act<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Actinacis"))*100)/TL5
#amount Astreopora
TL5.ast<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Astreopora"))*100)/TL5
#amount Bioclastic
TL5.bio<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Bioclastic sediment"))*100)/TL5
#amount Bivalve
TL5.biv<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Bivalve"))*100)/TL5
#amount Bivalve boring
TL5.biv.b<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Bivalve boring"))*100)/TL5
#amount Caulastrea
TL5.cau<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Caulastrea"))*100)/TL5
#amount CCA
TL5.cca<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "CCA"))*100)/TL5
#amount Cement
TL5.cem<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Cement"))*100)/TL5
#amount Coral
TL5.cor<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Coral"))*100)/TL5
#amount Coralline algae
TL5.cor.a<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Coralline algae"))*100)/TL5
#amount Favites
TL5.fav<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Favites"))*100)/TL5
#amount Glauconite
TL5.glau<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Glauconite"))*100)/TL5
#amount Hydnophora
TL5.hyd<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Hydnophora"))*100)/TL5
#amount Montastrea
TL5.mon<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Montastrea"))*100)/TL5
#amount Pavona
TL5.pav<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Pavona"))*100)/TL5
#amount Porites
TL5.por<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Porites"))*100)/TL5
#amount Poriticae
TL5.pd<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Poriticae"))*100)/TL5
#amount Sediment
TL5.sed<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Sediment"))*100)/TL5
#amount Shale
TL5.sha<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Shale"))*100)/TL5
#amount Siderastrea
TL5.sid<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Siderastrea"))*100)/TL5
#amount Stylophora
TL5.sty<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Stylophora"))*100)/TL5
#amount Tarbellastraea
TL5.tar<-(nrow(line %>% filter(transect_id == "TL5" & point_id == "Tarbellastraea"))*100)/TL5


TL5.data<-data.frame(TL5,TL5.act, TL5.ast,TL5.bio,TL5.biv,TL5.biv.b,
                      TL5.cau,TL5.cca,TL5.cem,TL5.cor,TL5.cor.a,TL5.fav,TL5.glau,TL5.hyd,TL5.mon,TL5.pav,TL5.pd,
                      TL5.por,TL5.sed,TL5.sha,TL5.sid,TL5.sty,TL5.tar)


#write.xlsx(x = TL5.data,"TL5.xlsx")





#-------------------------------------------------------------------------
# TL6 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
TL6<-nrow(line %>% filter(transect_id %in% "TL6"))
#amount Actinacis
TL6.act<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Actinacis"))*100)/TL6
#amount Astreopora
TL6.ast<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Astreopora"))*100)/TL6
#amount Bioclastic
TL6.bio<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Bioclastic sediment"))*100)/TL6
#amount Bivalve
TL6.biv<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Bivalve"))*100)/TL6
#amount Bivalve boring
TL6.biv.b<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Bivalve boring"))*100)/TL6
#amount Caulastrea
TL6.cau<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Caulastrea"))*100)/TL6
#amount CCA
TL6.cca<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "CCA"))*100)/TL6
#amount Cement
TL6.cem<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Cement"))*100)/TL6
#amount Coral
TL6.cor<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Coral"))*100)/TL6
#amount Coralline algae
TL6.cor.a<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Coralline algae"))*100)/TL6
#amount Favites
TL6.fav<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Favites"))*100)/TL6
#amount Glauconite
TL6.glau<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Glauconite"))*100)/TL6
#amount Hydnophora
TL6.hyd<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Hydnophora"))*100)/TL6
#amount Montastrea
TL6.mon<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Montastrea"))*100)/TL6
#amount Pavona
TL6.pav<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Pavona"))*100)/TL6
#amount Porites
TL6.por<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Porites"))*100)/TL6
#amount Poriticae
TL6.pd<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Poriticae"))*100)/TL6
#amount Sediment
TL6.sed<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Sediment"))*100)/TL6
#amount Shale
TL6.sha<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Shale"))*100)/TL6
#amount Siderastrea
TL6.sid<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Siderastrea"))*100)/TL6
#amount Stylophora
TL6.sty<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Stylophora"))*100)/TL6
#amount Tarbellastraea
TL6.tar<-(nrow(line %>% filter(transect_id == "TL6" & point_id == "Tarbellastraea"))*100)/TL6


TL6.data<-data.frame(TL6,TL6.act, TL6.ast,TL6.bio,TL6.biv,TL6.biv.b,
                      TL6.cau,TL6.cca,TL6.cem,TL6.cor,TL6.cor.a,TL6.fav,TL6.glau,TL6.hyd,TL6.mon,TL6.pav,TL6.pd,
                      TL6.por,TL6.sed,TL6.sha,TL6.sid,TL6.sty,TL6.tar)


#write.xlsx(x = TL6.data,"TL6.xlsx")







# Ciolo -----------------------------------------------------------
#--------------------------------------------------------------------------
# CGL1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
CGL1<-nrow(line %>% filter(transect_id %in% "CGL1"))
#amount Actinacis
CGL1.act<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Actinacis"))*100)/CGL1
#amount Astreopora
CGL1.ast<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Astreopora"))*100)/CGL1
#amount Bioclastic
CGL1.bio<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Bioclastic sediment"))*100)/CGL1
#amount Bivalve
CGL1.biv<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Bivalve"))*100)/CGL1
#amount Bivalve boring
CGL1.biv.b<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Bivalve boring"))*100)/CGL1
#amount Caulastrea
CGL1.cau<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Caulastrea"))*100)/CGL1
#amount CCA
CGL1.cca<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "CCA"))*100)/CGL1
#amount Cement
CGL1.cem<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Cement"))*100)/CGL1
#amount Coral
CGL1.cor<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Coral"))*100)/CGL1
#amount Coralline algae
CGL1.cor.a<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Coralline algae"))*100)/CGL1
#amount Favites
CGL1.fav<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Favites"))*100)/CGL1
#amount Glauconite
CGL1.glau<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Glauconite"))*100)/CGL1
#amount Hydnophora
CGL1.hyd<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Hydnophora"))*100)/CGL1
#amount Montastrea
CGL1.mon<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Montastrea"))*100)/CGL1
#amount Pavona
CGL1.pav<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Pavona"))*100)/CGL1
#amount Porites
CGL1.por<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Porites"))*100)/CGL1
#amount Poriticae
CGL1.pd<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Poriticae"))*100)/CGL1
#amount Sediment
CGL1.sed<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Sediment"))*100)/CGL1
#amount Shale
CGL1.sha<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Shale"))*100)/CGL1
#amount Siderastrea
CGL1.sid<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Siderastrea"))*100)/CGL1
#amount Stylophora
CGL1.sty<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Stylophora"))*100)/CGL1
#amount Tarbellastraea
CGL1.tar<-(nrow(line %>% filter(transect_id == "CGL1" & point_id == "Tarbellastraea"))*100)/CGL1


CGL1.data<-data.frame(CGL1,CGL1.act, CGL1.ast,CGL1.bio,CGL1.biv,CGL1.biv.b,
                      CGL1.cau,CGL1.cca,CGL1.cem,CGL1.cor,CGL1.cor.a,CGL1.fav,CGL1.glau,CGL1.hyd,CGL1.mon,CGL1.pav,CGL1.pd,
                      CGL1.por,CGL1.sed,CGL1.sha,CGL1.sid,CGL1.sty,CGL1.tar)

#write.xlsx(x = CGL1.data,"CGL1.xlsx")


#--------------------------------------------------------------------------
# CGL2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#amount total
CGL2<-nrow(line %>% filter(transect_id %in% "CGL2"))
#amount Actinacis
CGL2.act<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Actinacis"))*100)/CGL2
#amount Astreopora
CGL2.ast<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Astreopora"))*100)/CGL2
#amount Bioclastic
CGL2.bio<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Bioclastic sediment"))*100)/CGL2
#amount Bivalve
CGL2.biv<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Bivalve"))*100)/CGL2
#amount Bivalve boring
CGL2.biv.b<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Bivalve boring"))*100)/CGL2
#amount Caulastrea
CGL2.cau<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Caulastrea"))*100)/CGL2
#amount CCA
CGL2.cca<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "CCA"))*100)/CGL2
#amount Cement
CGL2.cem<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Cement"))*100)/CGL2
#amount Coral
CGL2.cor<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Coral"))*100)/CGL2
#amount Coralline algae
CGL2.cor.a<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Coralline algae"))*100)/CGL2
#amount Favites
CGL2.fav<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Favites"))*100)/CGL2
#amount Glauconite
CGL2.glau<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Glauconite"))*100)/CGL2
#amount Hydnophora
CGL2.hyd<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Hydnophora"))*100)/CGL2
#amount Montastrea
CGL2.mon<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Montastrea"))*100)/CGL2
#amount Pavona
CGL2.pav<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Pavona"))*100)/CGL2
#amount Porites
CGL2.por<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Porites"))*100)/CGL2
#amount Poriticae
CGL2.pd<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Poriticae"))*100)/CGL2
#amount Sediment
CGL2.sed<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Sediment"))*100)/CGL2
#amount Shale
CGL2.sha<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Shale"))*100)/CGL2
#amount Siderastrea
CGL2.sid<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Siderastrea"))*100)/CGL2
#amount Stylophora
CGL2.sty<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Stylophora"))*100)/CGL2
#amount Tarbellastraea
CGL2.tar<-(nrow(line %>% filter(transect_id == "CGL2" & point_id == "Tarbellastraea"))*100)/CGL2


CGL2.data<-data.frame(CGL2,CGL2.act, CGL2.ast,CGL2.bio,CGL2.biv,CGL2.biv.b,
                      CGL2.cau,CGL2.cca,CGL2.cem,CGL2.cor,CGL2.cor.a,CGL2.fav,CGL2.glau,CGL2.hyd,CGL2.mon,CGL2.pav,CGL2.pd,
                      CGL2.por,CGL2.sed,CGL2.sha,CGL2.sid,CGL2.sty,CGL2.tar)


#write.xlsx(x = CGL2.data,"CGL2.xlsx")



#-------------------------------------------------------------------------
# CGL3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
CGL3<-nrow(line %>% filter(transect_id %in% "CGL3"))
#amount Actinacis
CGL3.act<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Actinacis"))*100)/CGL3
#amount Astreopora
CGL3.ast<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Astreopora"))*100)/CGL3
#amount Bioclastic
CGL3.bio<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Bioclastic sediment"))*100)/CGL3
#amount Bivalve
CGL3.biv<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Bivalve"))*100)/CGL3
#amount Bivalve boring
CGL3.biv.b<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Bivalve boring"))*100)/CGL3
#amount Caulastrea
CGL3.cau<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Caulastrea"))*100)/CGL3
#amount CCA
CGL3.cca<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "CCA"))*100)/CGL3
#amount Cement
CGL3.cem<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Cement"))*100)/CGL3
#amount Coral
CGL3.cor<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Coral"))*100)/CGL3
#amount Coralline algae
CGL3.cor.a<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Coralline algae"))*100)/CGL3
#amount Favites
CGL3.fav<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Favites"))*100)/CGL3
#amount Glauconite
CGL3.glau<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Glauconite"))*100)/CGL3
#amount Hydnophora
CGL3.hyd<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Hydnophora"))*100)/CGL3
#amount Montastrea
CGL3.mon<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Montastrea"))*100)/CGL3
#amount Pavona
CGL3.pav<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Pavona"))*100)/CGL3
#amount Porites
CGL3.por<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Porites"))*100)/CGL3
#amount Poriticae
CGL3.pd<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Poriticae"))*100)/CGL3
#amount Sediment
CGL3.sed<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Sediment"))*100)/CGL3
#amount Shale
CGL3.sha<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Shale"))*100)/CGL3
#amount Siderastrea
CGL3.sid<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Siderastrea"))*100)/CGL3
#amount Stylophora
CGL3.sty<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Stylophora"))*100)/CGL3
#amount Tarbellastraea
CGL3.tar<-(nrow(line %>% filter(transect_id == "CGL3" & point_id == "Tarbellastraea"))*100)/CGL3


CGL3.data<-data.frame(CGL3,CGL3.act, CGL3.ast,CGL3.bio,CGL3.biv,CGL3.biv.b,
                      CGL3.cau,CGL3.cca,CGL3.cem,CGL3.cor,CGL3.cor.a,CGL3.fav,CGL3.glau,CGL3.hyd,CGL3.mon,CGL3.pav,CGL3.pd,
                      CGL3.por,CGL3.sed,CGL3.sha,CGL3.sid,CGL3.sty,CGL3.tar)


#write.xlsx(x = CGL3.data,"CGL3.xlsx")





#-------------------------------------------------------------------------
# CGL4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
CGL4<-nrow(line %>% filter(transect_id %in% "CGL4"))
#amount Actinacis
CGL4.act<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Actinacis"))*100)/CGL4
#amount Astreopora
CGL4.ast<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Astreopora"))*100)/CGL4
#amount Bioclastic
CGL4.bio<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Bioclastic sediment"))*100)/CGL4
#amount Bivalve
CGL4.biv<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Bivalve"))*100)/CGL4
#amount Bivalve boring
CGL4.biv.b<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Bivalve boring"))*100)/CGL4
#amount Caulastrea
CGL4.cau<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Caulastrea"))*100)/CGL4
#amount CCA
CGL4.cca<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "CCA"))*100)/CGL4
#amount Cement
CGL4.cem<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Cement"))*100)/CGL4
#amount Coral
CGL4.cor<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Coral"))*100)/CGL4
#amount Coralline algae
CGL4.cor.a<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Coralline algae"))*100)/CGL4
#amount Favites
CGL4.fav<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Favites"))*100)/CGL4
#amount Glauconite
CGL4.glau<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Glauconite"))*100)/CGL4
#amount Hydnophora
CGL4.hyd<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Hydnophora"))*100)/CGL4
#amount Montastrea
CGL4.mon<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Montastrea"))*100)/CGL4
#amount Pavona
CGL4.pav<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Pavona"))*100)/CGL4
#amount Porites
CGL4.por<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Porites"))*100)/CGL4
#amount Poriticae
CGL4.pd<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Poriticae"))*100)/CGL4
#amount Sediment
CGL4.sed<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Sediment"))*100)/CGL4
#amount Shale
CGL4.sha<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Shale"))*100)/CGL4
#amount Siderastrea
CGL4.sid<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Siderastrea"))*100)/CGL4
#amount Stylophora
CGL4.sty<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Stylophora"))*100)/CGL4
#amount Tarbellastraea
CGL4.tar<-(nrow(line %>% filter(transect_id == "CGL4" & point_id == "Tarbellastraea"))*100)/CGL4


CGL4.data<-data.frame(CGL4,CGL4.act, CGL4.ast,CGL4.bio,CGL4.biv,CGL4.biv.b,
                      CGL4.cau,CGL4.cca,CGL4.cem,CGL4.cor,CGL4.cor.a,CGL4.fav,CGL4.glau,CGL4.hyd,CGL4.mon,CGL4.pav,CGL4.pd,
                      CGL4.por,CGL4.sed,CGL4.sha,CGL4.sid,CGL4.sty,CGL4.tar)


#write.xlsx(x = CGL4.data,"CGL4.xlsx")



#-------------------------------------------------------------------------
# CGL5 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
CGL5<-nrow(line %>% filter(transect_id %in% "CGL5"))
#amount Actinacis
CGL5.act<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Actinacis"))*100)/CGL5
#amount Astreopora
CGL5.ast<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Astreopora"))*100)/CGL5
#amount Bioclastic
CGL5.bio<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Bioclastic sediment"))*100)/CGL5
#amount Bivalve
CGL5.biv<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Bivalve"))*100)/CGL5
#amount Bivalve boring
CGL5.biv.b<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Bivalve boring"))*100)/CGL5
#amount Caulastrea
CGL5.cau<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Caulastrea"))*100)/CGL5
#amount CCA
CGL5.cca<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "CCA"))*100)/CGL5
#amount Cement
CGL5.cem<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Cement"))*100)/CGL5
#amount Coral
CGL5.cor<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Coral"))*100)/CGL5
#amount Coralline algae
CGL5.cor.a<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Coralline algae"))*100)/CGL5
#amount Favites
CGL5.fav<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Favites"))*100)/CGL5
#amount Glauconite
CGL5.glau<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Glauconite"))*100)/CGL5
#amount Hydnophora
CGL5.hyd<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Hydnophora"))*100)/CGL5
#amount Montastrea
CGL5.mon<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Montastrea"))*100)/CGL5
#amount Pavona
CGL5.pav<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Pavona"))*100)/CGL5
#amount Porites
CGL5.por<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Porites"))*100)/CGL5
#amount Poriticae
CGL5.pd<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Poriticae"))*100)/CGL5
#amount Sediment
CGL5.sed<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Sediment"))*100)/CGL5
#amount Shale
CGL5.sha<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Shale"))*100)/CGL5
#amount Siderastrea
CGL5.sid<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Siderastrea"))*100)/CGL5
#amount Stylophora
CGL5.sty<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Stylophora"))*100)/CGL5
#amount Tarbellastraea
CGL5.tar<-(nrow(line %>% filter(transect_id == "CGL5" & point_id == "Tarbellastraea"))*100)/CGL5


CGL5.data<-data.frame(CGL5,CGL5.act, CGL5.ast,CGL5.bio,CGL5.biv,CGL5.biv.b,
                      CGL5.cau,CGL5.cca,CGL5.cem,CGL5.cor,CGL5.cor.a,CGL5.fav,CGL5.glau,CGL5.hyd,CGL5.mon,CGL5.pav,CGL5.pd,
                      CGL5.por,CGL5.sed,CGL5.sha,CGL5.sid,CGL5.sty,CGL5.tar)


#write.xlsx(x = CGL5.data,"CGL5.xlsx")





#-------------------------------------------------------------------------
# CGL6 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
CGL6<-nrow(line %>% filter(transect_id %in% "CGL6"))
#amount Actinacis
CGL6.act<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Actinacis"))*100)/CGL6
#amount Astreopora
CGL6.ast<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Astreopora"))*100)/CGL6
#amount Bioclastic
CGL6.bio<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Bioclastic sediment"))*100)/CGL6
#amount Bivalve
CGL6.biv<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Bivalve"))*100)/CGL6
#amount Bivalve boring
CGL6.biv.b<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Bivalve boring"))*100)/CGL6
#amount Caulastrea
CGL6.cau<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Caulastrea"))*100)/CGL6
#amount CCA
CGL6.cca<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "CCA"))*100)/CGL6
#amount Cement
CGL6.cem<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Cement"))*100)/CGL6
#amount Coral
CGL6.cor<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Coral"))*100)/CGL6
#amount Coralline algae
CGL6.cor.a<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Coralline algae"))*100)/CGL6
#amount Favites
CGL6.fav<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Favites"))*100)/CGL6
#amount Glauconite
CGL6.glau<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Glauconite"))*100)/CGL6
#amount Hydnophora
CGL6.hyd<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Hydnophora"))*100)/CGL6
#amount Montastrea
CGL6.mon<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Montastrea"))*100)/CGL6
#amount Pavona
CGL6.pav<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Pavona"))*100)/CGL6
#amount Porites
CGL6.por<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Porites"))*100)/CGL6
#amount Poriticae
CGL6.pd<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Poriticae"))*100)/CGL6
#amount Sediment
CGL6.sed<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Sediment"))*100)/CGL6
#amount Shale
CGL6.sha<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Shale"))*100)/CGL6
#amount Siderastrea
CGL6.sid<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Siderastrea"))*100)/CGL6
#amount Stylophora
CGL6.sty<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Stylophora"))*100)/CGL6
#amount Tarbellastraea
CGL6.tar<-(nrow(line %>% filter(transect_id == "CGL6" & point_id == "Tarbellastraea"))*100)/CGL6


CGL6.data<-data.frame(CGL6,CGL6.act, CGL6.ast,CGL6.bio,CGL6.biv,CGL6.biv.b,
                      CGL6.cau,CGL6.cca,CGL6.cem,CGL6.cor,CGL6.cor.a,CGL6.fav,CGL6.glau,CGL6.hyd,CGL6.mon,CGL6.pav,CGL6.pd,
                      CGL6.por,CGL6.sed,CGL6.sha,CGL6.sid,CGL6.sty,CGL6.tar)


#write.xlsx(x = CGL6.data,"CGL6.xlsx")




#-------------------------------------------------------------------------
# CGL7 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
CGL7<-nrow(line %>% filter(transect_id %in% "CGL7"))
#amount Actinacis
CGL7.act<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Actinacis"))*100)/CGL7
#amount Astreopora
CGL7.ast<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Astreopora"))*100)/CGL7
#amount Bioclastic
CGL7.bio<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Bioclastic sediment"))*100)/CGL7
#amount Bivalve
CGL7.biv<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Bivalve"))*100)/CGL7
#amount Bivalve boring
CGL7.biv.b<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Bivalve boring"))*100)/CGL7
#amount Caulastrea
CGL7.cau<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Caulastrea"))*100)/CGL7
#amount CCA
CGL7.cca<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "CCA"))*100)/CGL7
#amount Cement
CGL7.cem<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Cement"))*100)/CGL7
#amount Coral
CGL7.cor<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Coral"))*100)/CGL7
#amount Coralline algae
CGL7.cor.a<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Coralline algae"))*100)/CGL7
#amount Favites
CGL7.fav<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Favites"))*100)/CGL7
#amount Glauconite
CGL7.glau<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Glauconite"))*100)/CGL7
#amount Hydnophora
CGL7.hyd<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Hydnophora"))*100)/CGL7
#amount Montastrea
CGL7.mon<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Montastrea"))*100)/CGL7
#amount Pavona
CGL7.pav<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Pavona"))*100)/CGL7
#amount Porites
CGL7.por<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Porites"))*100)/CGL7
#amount Poriticae
CGL7.pd<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Poriticae"))*100)/CGL7
#amount Sediment
CGL7.sed<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Sediment"))*100)/CGL7
#amount Shale
CGL7.sha<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Shale"))*100)/CGL7
#amount Siderastrea
CGL7.sid<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Siderastrea"))*100)/CGL7
#amount Stylophora
CGL7.sty<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Stylophora"))*100)/CGL7
#amount Tarbellastraea
CGL7.tar<-(nrow(line %>% filter(transect_id == "CGL7" & point_id == "Tarbellastraea"))*100)/CGL7


CGL7.data<-data.frame(CGL7,CGL7.act, CGL7.ast,CGL7.bio,CGL7.biv,CGL7.biv.b,
                      CGL7.cau,CGL7.cca,CGL7.cem,CGL7.cor,CGL7.cor.a,CGL7.fav,CGL7.glau,CGL7.hyd,CGL7.mon,CGL7.pav,CGL7.pd,
                      CGL7.por,CGL7.sed,CGL7.sha,CGL7.sid,CGL7.sty,CGL7.tar)


#write.xlsx(x = CGL7.data,"CGL7.xlsx")






# Leuca -----------------------------------------------------------
#--------------------------------------------------------------------------
# LCT1 ---------------------------------------------------------------------
#-------------------------------------------------------------------------
#amount total
LCT1<-nrow(line %>% filter(transect_id %in% "LCT1"))
#amount Actinacis
LCT1.act<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Actinacis"))*100)/LCT1
#amount Astreopora
LCT1.ast<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Astreopora"))*100)/LCT1
#amount Bioclastic
LCT1.bio<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Bioclastic sediment"))*100)/LCT1
#amount Bivalve
LCT1.biv<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Bivalve"))*100)/LCT1
#amount Bivalve boring
LCT1.biv.b<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Bivalve boring"))*100)/LCT1
#amount Caulastrea
LCT1.cau<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Caulastrea"))*100)/LCT1
#amount CCA
LCT1.cca<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "CCA"))*100)/LCT1
#amount Cement
LCT1.cem<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Cement"))*100)/LCT1
#amount Coral
LCT1.cor<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Coral"))*100)/LCT1
#amount Coralline algae
LCT1.cor.a<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Coralline algae"))*100)/LCT1
#amount Favites
LCT1.fav<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Favites"))*100)/LCT1
#amount Glauconite
LCT1.glau<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Glauconite"))*100)/LCT1
#amount Hydnophora
LCT1.hyd<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Hydnophora"))*100)/LCT1
#amount Montastrea
LCT1.mon<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Montastrea"))*100)/LCT1
#amount Pavona
LCT1.pav<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Pavona"))*100)/LCT1
#amount Porites
LCT1.por<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Porites"))*100)/LCT1
#amount Poriticae
LCT1.pd<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Poriticae"))*100)/LCT1
#amount Sediment
LCT1.sed<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Sediment"))*100)/LCT1
#amount Shale
LCT1.sha<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Shale"))*100)/LCT1
#amount Siderastrea
LCT1.sid<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Siderastrea"))*100)/LCT1
#amount Stylophora
LCT1.sty<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Stylophora"))*100)/LCT1
#amount Tarbellastraea
LCT1.tar<-(nrow(line %>% filter(transect_id == "LCT1" & point_id == "Tarbellastraea"))*100)/LCT1


LCT1.data<-data.frame(LCT1,LCT1.act, LCT1.ast,LCT1.bio,LCT1.biv,LCT1.biv.b,
                      LCT1.cau,LCT1.cca,LCT1.cem,LCT1.cor,LCT1.cor.a,LCT1.fav,LCT1.glau,LCT1.hyd,LCT1.mon,LCT1.pav,LCT1.pd,
                      LCT1.por,LCT1.sed,LCT1.sha,LCT1.sid,LCT1.sty,LCT1.tar)

#write.xlsx(x = LCT1.data,"LCT1.xlsx")


#--------------------------------------------------------------------------
# LCT2 ---------------------------------------------------------------------
#--------------------------------------------------------------------------
#amount total
LCT2<-nrow(line %>% filter(transect_id %in% "LCT2"))
#amount Actinacis
LCT2.act<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Actinacis"))*100)/LCT2
#amount Astreopora
LCT2.ast<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Astreopora"))*100)/LCT2
#amount Bioclastic
LCT2.bio<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Bioclastic sediment"))*100)/LCT2
#amount Bivalve
LCT2.biv<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Bivalve"))*100)/LCT2
#amount Bivalve boring
LCT2.biv.b<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Bivalve boring"))*100)/LCT2
#amount Caulastrea
LCT2.cau<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Caulastrea"))*100)/LCT2
#amount CCA
LCT2.cca<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "CCA"))*100)/LCT2
#amount Cement
LCT2.cem<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Cement"))*100)/LCT2
#amount Coral
LCT2.cor<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Coral"))*100)/LCT2
#amount Coralline algae
LCT2.cor.a<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Coralline algae"))*100)/LCT2
#amount Favites
LCT2.fav<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Favites"))*100)/LCT2
#amount Glauconite
LCT2.glau<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Glauconite"))*100)/LCT2
#amount Hydnophora
LCT2.hyd<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Hydnophora"))*100)/LCT2
#amount Montastrea
LCT2.mon<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Montastrea"))*100)/LCT2
#amount Pavona
LCT2.pav<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Pavona"))*100)/LCT2
#amount Porites
LCT2.por<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Porites"))*100)/LCT2
#amount Poriticae
LCT2.pd<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Poriticae"))*100)/LCT2
#amount Sediment
LCT2.sed<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Sediment"))*100)/LCT2
#amount Shale
LCT2.sha<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Shale"))*100)/LCT2
#amount Siderastrea
LCT2.sid<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Siderastrea"))*100)/LCT2
#amount Stylophora
LCT2.sty<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Stylophora"))*100)/LCT2
#amount Tarbellastraea
LCT2.tar<-(nrow(line %>% filter(transect_id == "LCT2" & point_id == "Tarbellastraea"))*100)/LCT2


LCT2.data<-data.frame(LCT2,LCT2.act, LCT2.ast,LCT2.bio,LCT2.biv,LCT2.biv.b,
                      LCT2.cau,LCT2.cca,LCT2.cem,LCT2.cor,LCT2.cor.a,LCT2.fav,LCT2.glau,LCT2.hyd,LCT2.mon,LCT2.pav,LCT2.pd,
                      LCT2.por,LCT2.sed,LCT2.sha,LCT2.sid,LCT2.sty,LCT2.tar)


#write.xlsx(x = LCT2.data,"LCT2.xlsx")



#-------------------------------------------------------------------------
# LCT3 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
LCT3<-nrow(line %>% filter(transect_id %in% "LCT3"))
#amount Actinacis
LCT3.act<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Actinacis"))*100)/LCT3
#amount Astreopora
LCT3.ast<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Astreopora"))*100)/LCT3
#amount Bioclastic
LCT3.bio<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Bioclastic sediment"))*100)/LCT3
#amount Bivalve
LCT3.biv<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Bivalve"))*100)/LCT3
#amount Bivalve boring
LCT3.biv.b<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Bivalve boring"))*100)/LCT3
#amount Caulastrea
LCT3.cau<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Caulastrea"))*100)/LCT3
#amount CCA
LCT3.cca<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "CCA"))*100)/LCT3
#amount Cement
LCT3.cem<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Cement"))*100)/LCT3
#amount Coral
LCT3.cor<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Coral"))*100)/LCT3
#amount Coralline algae
LCT3.cor.a<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Coralline algae"))*100)/LCT3
#amount Favites
LCT3.fav<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Favites"))*100)/LCT3
#amount Glauconite
LCT3.glau<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Glauconite"))*100)/LCT3
#amount Hydnophora
LCT3.hyd<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Hydnophora"))*100)/LCT3
#amount Montastrea
LCT3.mon<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Montastrea"))*100)/LCT3
#amount Pavona
LCT3.pav<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Pavona"))*100)/LCT3
#amount Porites
LCT3.por<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Porites"))*100)/LCT3
#amount Poriticae
LCT3.pd<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Poriticae"))*100)/LCT3
#amount Sediment
LCT3.sed<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Sediment"))*100)/LCT3
#amount Shale
LCT3.sha<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Shale"))*100)/LCT3
#amount Siderastrea
LCT3.sid<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Siderastrea"))*100)/LCT3
#amount Stylophora
LCT3.sty<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Stylophora"))*100)/LCT3
#amount Tarbellastraea
LCT3.tar<-(nrow(line %>% filter(transect_id == "LCT3" & point_id == "Tarbellastraea"))*100)/LCT3


LCT3.data<-data.frame(LCT3,LCT3.act, LCT3.ast,LCT3.bio,LCT3.biv,LCT3.biv.b,
                      LCT3.cau,LCT3.cca,LCT3.cem,LCT3.cor,LCT3.cor.a,LCT3.fav,LCT3.glau,LCT3.hyd,LCT3.mon,LCT3.pav,LCT3.pd,
                      LCT3.por,LCT3.sed,LCT3.sha,LCT3.sid,LCT3.sty,LCT3.tar)


#write.xlsx(x = LCT3.data,"LCT3.xlsx")





#-------------------------------------------------------------------------
# LCT4 ---------------------------------------------------------------------
#---------------------------------------------------------------------------
#amount total
LCT4<-nrow(line %>% filter(transect_id %in% "LCT4"))
#amount Actinacis
LCT4.act<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Actinacis"))*100)/LCT4
#amount Astreopora
LCT4.ast<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Astreopora"))*100)/LCT4
#amount Bioclastic
LCT4.bio<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Bioclastic sediment"))*100)/LCT4
#amount Bivalve
LCT4.biv<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Bivalve"))*100)/LCT4
#amount Bivalve boring
LCT4.biv.b<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Bivalve boring"))*100)/LCT4
#amount Caulastrea
LCT4.cau<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Caulastrea"))*100)/LCT4
#amount CCA
LCT4.cca<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "CCA"))*100)/LCT4
#amount Cement
LCT4.cem<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Cement"))*100)/LCT4
#amount Coral
LCT4.cor<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Coral"))*100)/LCT4
#amount Coralline algae
LCT4.cor.a<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Coralline algae"))*100)/LCT4
#amount Favites
LCT4.fav<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Favites"))*100)/LCT4
#amount Glauconite
LCT4.glau<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Glauconite"))*100)/LCT4
#amount Hydnophora
LCT4.hyd<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Hydnophora"))*100)/LCT4
#amount Montastrea
LCT4.mon<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Montastrea"))*100)/LCT4
#amount Pavona
LCT4.pav<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Pavona"))*100)/LCT4
#amount Porites
LCT4.por<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Porites"))*100)/LCT4
#amount Poriticae
LCT4.pd<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Poriticae"))*100)/LCT4
#amount Sediment
LCT4.sed<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Sediment"))*100)/LCT4
#amount Shale
LCT4.sha<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Shale"))*100)/LCT4
#amount Siderastrea
LCT4.sid<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Siderastrea"))*100)/LCT4
#amount Stylophora
LCT4.sty<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Stylophora"))*100)/LCT4
#amount Tarbellastraea
LCT4.tar<-(nrow(line %>% filter(transect_id == "LCT4" & point_id == "Tarbellastraea"))*100)/LCT4


LCT4.data<-data.frame(LCT4,LCT4.act, LCT4.ast,LCT4.bio,LCT4.biv,LCT4.biv.b,
                      LCT4.cau,LCT4.cca,LCT4.cem,LCT4.cor,LCT4.cor.a,LCT4.fav,LCT4.glau,LCT4.hyd,LCT4.mon,LCT4.pav,LCT4.pd,
                      LCT4.por,LCT4.sed,LCT4.sha,LCT4.sid,LCT4.sty,LCT4.tar)


#write.xlsx(x = LCT4.data,"LCT4.xlsx")



#------------------------------------------------------------------------------------------------------

# plotting ----------------------------------------------------------------

sp.cover<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/line transects/means cover data.csv")








#---------------------------------------------------------------------------------------------------------------------------------

# rugosity ----------------------------------------------------------------

#--------------------------------------------------------------------------

rug<-read.csv2("C:/Users/Kerry/Desktop/Master-thesis/R/data/rugosity/mean rugosity.csv")

#summary(rug)
rug$time.reef.section<-as.factor(rug$time.reef.section)

#correcting the order for the x axis
rug$time.reef.section<- factor(rug$time.reef.section, levels = c("Oligocene reef front", "Miocene reef front", "Miocene proximal slope"))

#PROBLEM cant make dots (changed class of time.reef.section from character to a factor)?

plot(rug$time.reef.section,rug$mean_rugosity, type="5",
     ylab="rugosity", xlab="time & reef section", #main="Rugosity (Oligocene and Miocene)"
  
