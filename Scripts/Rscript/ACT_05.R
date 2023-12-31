#conjunto de datos para correcalcion 
#JGC
#26/09/23

#crear base de datos 

x <- c (10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y <- c (8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

#crear un data.frame con las variables x and y 

d1 <- data.frame(x, y)

#Estadisticas descriptivas 
mean(d1$x); var(d1$x)
mean(d1$y); var(d1$y)

#Aplicar correlacion 
cor.test(d1$x, d1$y)

plot(d1$x, d1$y,
     pch = 19, 
     xlab = "Valor de x",
     ylab = "Valor de y",
     col = "Violet")

text(8, 10, "r= 0.8164***")