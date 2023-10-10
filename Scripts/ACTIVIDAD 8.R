#JGC
#ANOVA 
#10/10/23


# IMPORTAR DATOS ----------------------------------------------------------
library(repmis)

DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)

# Determinar caracteristcas espeificas 

boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot (DAP$DAP ~ DAP$Paraje)

tapply (DAP$EDAD, DAP$Paraje, mean)
tapply (DAP$EDAD, DAP$Paraje, var)

#NORMALIDAD REVISAR
shapiro.test(DAP$DAP) #NORMALIDAD
hist(DAP$DAP, 
     col = "violet") #HISTOGRAMA

#LOS DATOS DEL DAP NO SON NORMALES 

bartlett.test(DAP$DAP ~ DAP$Paraje) # VARIANZA 
# LAS VARIANZAS DE LOS TRATAMIENTOS SON IGUALES 

#TRANSFORMAR DAP PARA CUMPLIR NORMALIDAD 
DAP$raiz <- sqrt (DAP$DAP)
hist(DAP$raiz,
     col = "violet")


# PROBAR NORMALIDAD A LOS DATOS TRANSFORMADOS (RAIZ CUADRADA)
shapiro.test(DAP$raiz)

#LOS DATOS SON AHORA NORMALES 

#PROBAR HOMOGENEIDAD DE VARIANZAS DE LOS DATOS TRANSFORMADOS 
bartlett.test( DAP$raiz ~ DAP$Paraje)

dap.aov <- aov (DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot ( DAP$raiz ~ DAP$Paraje,
 
                    col = "purple")
#Encontrar las diferencias significativas 
TukeyHSD(dap.aov)

#Graficar diferencias significativas 
plot(TukeyHSD( dap.aov))
