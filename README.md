# Cartographie
1. Importation du package
library(raster)

2. Importation de la base de données : fichier “EquipementSportif.csv", "data.Rdata"
load("data.RData")
formes <- getData(name="GADM", country="FRA", level=2)

3. Établissement de l'index
concordance <- data[idx, EqSport2018]; concordance
formes$EqSport2018 <- concordance

4. Tracage de la carte
couleurs <- colorRampPalette(c('white', 'orange'))
pdf(file="EqSport2018.pdf" ,width = 7, height = 7) 
spplot(formes, var, col.regions=couleurs(30), 
       main=list(label="Nombres d'équipements sportifs selon les départements, 2018",cex=1.4))

dev.off()

