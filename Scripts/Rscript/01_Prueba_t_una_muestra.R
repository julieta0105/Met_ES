#Julieta Gonzalez Cuellar 
#21/08/23
#Matricula 2070694

# Importar datos ----------------------------------------------------------
#Funcion read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Scripts/mediciones.csv", header = TRUE)
head(mediciones) #funcion head (sirve para ver los primeros 6 datos)


# Descriptivas ------------------------------------------------------------

#Medidas de tendecia central media, mediana, rango 

mean(mediciones$altura) #calcular media
median(mediciones$altura) #mediana
range(mediciones$altura) #rango 
fivenum(mediciones$altura) #datos de boxplot 

#medidas de dispersion desviacion estandar, varianza

sd (mediciones$altura) #desviacion estandar
var(mediciones$altura) # varianza 


# Graficas ----------------------------------------------------------------




# Hipotesis ---------------------------------------------------------------

#xobs = 10.17 vs xteo = 11
#plantas de cedro deben alcanzar una altura de 11 cm en un año 
# de acuerdo a los dchos de viveristas 
# el valor de alfa referencia es 0.05 

# Procedimiento  ----------------------------------------------------------

# aplicar la funcion t.test # en una prueba de t nunca voy a poner una media, se ponen todos los datos 
t.test(mediciones$altura)
# df grados de libertad 
#intervalo de confianza 

t.test(mediciones$altura)


