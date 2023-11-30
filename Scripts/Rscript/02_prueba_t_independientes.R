#Julieta Gonzalez Cuellar 
#28/08/23
#Matricula 2070694

#dos tratamientos ctrl y fert, un grupo de plantas 
#prueba de t independientes 

# IMPORTAR  ---------------------------------------------------------------

setwd ("C:/REPOSITORIO/Met_ES/Scripts")
vivero <- read.csv("IE.csv", header = T)


# DESCRIPTIVAS  -----------------------------------------------------------

#usar la librerua dplyr para seleccionar datos mediante
#restricciones 
library(dplyr) #separar las planatas con tratamiento y con fertilizante
Ctrl <- vivero %>%
  filter(Tratamiento == "Ctrl")
Fert <- vivero %>%
  filter (Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)

 descriptor <- vivero%>%
  group_by(Tratamiento)%>%
  summarise(
    n = n (),
    media = mean(IE), 
    mediana = median(IE),
    sd = sd (IE),
    var= var(IE)
    )

# Grafica -----------------------------------------------------------------

boxplot(vivero$IE ~ vivero$Tratamiento, 
        xlab = "Tratamiento", 
        ylab = "Indice de Esbeltes",
        main = "Vivero Julieta", 
        col= "Pink")
t.test(vivero$IE ~ vivero$Tratamiento, var.equal= T)

