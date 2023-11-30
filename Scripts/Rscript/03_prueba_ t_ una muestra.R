
# importar datos  ---------------------------------------------------------
setwd("C:/REPOSITORIO/Met_ES/Scripts")
diametro <- read.csv("diametro.csv", header = T)

library(dplyr)
TA <- diametro %>%
  filter (tratamiento == "TA")
TB <- diametro %>%
  filter(tratamiento == "TB")
mean(TA$diametro)
mean(TB$diametro)

   descriptor <- diametro %>%
    group_by(tratamiento)%>%     
    summarise (
      n = n (),
      media = mean(diametro),
      mediana = median(diametro),
      sd = sd (diametro), 
      var= var(diametro)
    )     
   boxplot(diametro$diametro ~ diametro$tratamiento, 
           xlab = "tratamiento",
           ylab = "longitud de diametro",
           main = "Diametros Julieta",
           col= "pink")
t.test(diametro$diametro ~ diametro$tratamiento, var.equal= T)

# Conclusion --------------------------------------------------------------


# existe una diferencia significativa, los arboles sin tratamiento fertilizante tienen mayores diametros
