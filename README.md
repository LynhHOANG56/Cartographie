# Cartographie
1. Input le jeu des données, fichier “AV34_V3.csv" (package : gdata):

2. Installer des packages
library(raster)



var <- paste(colnames(data)[11]); var
concordance <- data[idx, var]; concordance
formes$EqSport2018 <- concordance
couleurs <- colorRampPalette(c('white', 'orange'))
pdf(file="EqSport2018.pdf" ,width = 7, height = 7) 
spplot(formes, var, col.regions=couleurs(30), 
       main=list(label="Nombres d'équipements sportifs selon les départements, 2018",cex=1.4))

dev.off()
