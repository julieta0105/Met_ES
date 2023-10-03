#correlacion 
#25/09/23

#JGC


# IMPORTAR ----------------------------------------------------------------

setwd ("C:/REPOSITORIO/Met_ES/Scripts")

cnpy <- read.csv("canopy.csv", header = T)
cnpy$Forest <- as.factor(cnpy$Forest)


# GRAFICA  ----------------------------------------------------------------

plot(cnpy$Cnpy, cnpy$LAI4)
#Asociacion negativa entre Cnpy vs LAI4

plot(cnpy$Cnpy, cnpy$GLI)
#Asociacion positiva cnpy vs GLI (luz que llega al suelo)

plot(cnpy$LAI4, cnpy$GLI)
#Asociacion negativa entre cnp y vs LAI4

#Personalizar grafica
#Anotar el valor de R dentro de la grafica 
plot(cnpy$Cnpy, cnpy$LAI4, 
     xlab = "Apertura dosel (%)", 
     ylab = "Area Foliar", 
     col= "violet", 
     pch= 19, 
     main = "Bosque Escuela")
cor.test(cnpy$Cnpy, cnpy$LAI4)

text(25, 1.2, "r= o.83***")

plot(cnpy$Cnpy, cnpy$GLI, 
     xlab= "Apertura de sosel(%)",
     ylab =  "Area Foliar",
     col= "violet",
     pch= 19, 
     main = "Bosque Escuela")
cor.test(cnpy$Cnpy, cnpy$GLI)
text(25, 25, "r=0.54***")

plot(cnpy$LAI4, cnpy$GLI, 
     xlab= "Apertura de sosel(%)",
     ylab =  "Area Foliar",
     col= "violet",
     pch= 19, 
     main = "Bosque Escuela")
cor.test(cnpy$LAI4, cnpy$GLI)
text(1.3, 30,"r= -0.69***")
