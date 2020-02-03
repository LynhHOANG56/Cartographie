# Cartographie
#1. Importation du package
library(raster)

#2. Importation de la base de données : fichier “EquipementSportif_dep.csv" & “EquipementSportif_reg.csv"
load("data.RData")
formes <- getData(name="GADM", country="FRA", level=2)

## A. selons départements
#3. Établissement de l'index
concordance <- data1[idx1, "EqSport2018"]; concordance
formes$EqSport2018 <- concordance

#4. Tracage de la carte
couleurs <- colorRampPalette(c('white', 'orange'))
pdf(file="EqSport2018_dep.pdf" ,width = 7, height = 7) 
spplot(formes, "EqSport2018", col.regions=couleurs(30), 
       main=list(label="Nombres d'équipements sportifs selon les départements, Insee 2018",cex=1.4))

dev.off()

## B. selons régions
#### Par région
formes <- getData(name="GADM", country="FRA", level=1)
concordance <- data2[idx2, "NEQS_10000"]; concordance
formes$NEQS_10000 <- concordance

#4. Tracage de la carte
couleurs <- colorRampPalette(c('white', 'orange'))
pdf(file="EqSport2018_reg.pdf" ,width = 7, height = 7) 
spplot(formes, "NEQS_10000", col.regions=couleurs(30), 
       main=list(label="Nombres d'équipements sportifs pour 10000 habitants selon les régions",cex=1.2))

dev.off()
