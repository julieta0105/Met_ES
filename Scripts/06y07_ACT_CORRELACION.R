#Julieta Gonzalez Cuellar 
#Correlacion 
#02/10/23

library (repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")



# Estadistica descriptiva  ------------------------------------------------

mean(erupciones$eruptions)
var(erupciones$eruptions)
sd (erupciones$eruptions)

mean(erupciones$ waiting)
var(erupciones$waiting)
sd (erupciones$waiting)



# hipotesis  --------------------------------------------------------------
t.test (erupciones$eruptions, erupciones$waiting)
#hipotesis nula: entre mas tiempo de espera, menor sera la duracion de las erupciones 
#hipotesis alternativa: entre mas tiempo de espera, mayor sera la duracion de las erupciones. 

#hipotesis aceptad : hipotesis altrnativa 
#Julieta Gonzalez Cuellar 
#Correlacion 
#09/10/23

library (repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")



# Estadistica descriptiva  ------------------------------------------------

mean(erupciones$eruptions)
var(erupciones$eruptions)
sd (erupciones$eruptions)

mean(erupciones$ waiting)
var(erupciones$waiting)
sd (erupciones$waiting)



# hipotesis  --------------------------------------------------------------
t.test (erupciones$eruptions, erupciones$waiting)
#hipotesis nula: entre mas tiempo de espera, menor sera la duracion de las erupciones 
#hipotesis alternativa: entre mas tiempo de espera, mayor sera la duracion de las erupciones. 

#hipotesis aceptad : hipotesis altrnativa 





# correlacion  ------------------------------------------------------------
plot(erupciones$waiting,erupciones$eruptions, 
     xlab = "Tiempo de espera entre erupciones (min)", 
     ylab = "Duración de las erupciones (min)",
     pch = 19, 
     col = "Violet")
text (60, 4.5, "r = 0.9008***") 

#abline sirve para despegar la linea de tendencia central 
abline (erup.lm,
        col= "orange")
range(erupciones$waiting)
erup <- c (80, 43, 45, 53, 61, 95)
y.pr <- -1.874 + 0.075*erup
erup
y.pr
# Aplicar la formula de manera individual 
#alfa + beta * valor de x
-1.874 + 0.075*80
-1.874 + 0.075*43
-1.874 + 0.075*45
-1.874 + 0.075*53
-1.874 + 0.075*61
-1.874 + 0.075*91
# el rango de los valores de x son mi ventana de prediccion de y prima
#range (erupciones$waiting)

cor.test(erupciones$eruptions, erupciones$waiting)

erupciones$parameter

#JGC
#09/10/2

erup.lm <-lm(erupciones$eruptions ~ erupciones$waiting)
erup.lm #obtenemos el valor de alfa y beta 

summary(erup.lm) #obtener la significancia de alfa y beta 

# valor de r ajustado quiere decir que se purde transformar en %
erupciones$yprima <- -1.874 + 0.075* erupciones$waiting
erupciones$estimados <- erup.lm$fitted.values #valores ajustados 






# correlacion  ------------------------------------------------------------
plot(erupciones$waiting,erupciones$eruptions, 
     xlab = "Tiempo de espera entre erupciones (min)", 
     ylab = "Duración de las erupciones (min)",
     pch = 19, 
     col = "Violet")
text (60, 4.5, "r = 0.9008***")    
     

cor.test(erupciones$eruptions, erupciones$waiting)

erupciones$parameter



