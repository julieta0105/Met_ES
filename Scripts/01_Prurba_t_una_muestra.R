#Julieta Gonzalez Cuellar 
#21/08/23
#Matricula 2070694


# Importar datos ----------------------------------------------------------
#Funcion read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Scripts/mediciones.csv", header = TRUE)
head(mediciones) #funcion head (sirve para ver los primeros 6 datos)


# Descriptivas ------------------------------------------------------------

#Medidas de tendecia central media, mediana, rango 

mean(mediciones$Altura) #calcular media
median(mediciones$Altura) #mediana
range(mediciones$Altura) #rango 
fivenum(mediciones$Altura) #datos de boxplot 

#medidas de dispersion desviacion estandar, varianza

sd (mediciones$Altura) #desviacion estandar
var(mediciones$Altura) # varianza 


# Graficas ----------------------------------------------------------------

boxplot(mediciones$Altura,
        col = "green", #color
        ylab = "altura (cm)", # variable
        main = "sitio 1", 
        ylim = c(6,14))


        
        