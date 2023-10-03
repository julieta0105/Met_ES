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





# correlacion  ------------------------------------------------------------
plot(erupciones$waiting,erupciones$eruptions, 
     xlab = "Tiempo de espera entre erupciones (min)", 
     ylab = "Duración de las erupciones (min)",
     pch = 19, 
     col = "Violet")
text (60, 4.5, "r = 0.9008***")    
     

cor.test(erupciones$eruptions, erupciones$waiting)

erupciones$parameter



