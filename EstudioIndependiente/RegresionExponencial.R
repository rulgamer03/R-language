graphics.off()
remove(list=ls())

#Leemos los datos 
Datos <- read.csv('Regresion_Exponencial.csv')

#Nombramos los datos de la variable x´s
x <- Datos[1:8,1]

#Nombramos los datos de la variabloe y
y <- Datos[1:8,2]

#Nos sirve para determinar la cantidad de graficas 
# que queremos poner en un mismo plot 
par(mfrow=c(1,3))

#Graficamos los datos
plot(x,y)

#Linealizamos los datos 
lny <- log(y)

#Graficamos los datos linealizados
plot(x,lny)

#La cantidad de datos 
n <- length(x)

#El producto de la variable x por la variable lny
xy <- x*lny

#Las x´s al cuadrado
x2 <- x^{2}

#Utilizando la formula para obtener la pendiente de la recta 
m <- (n*sum(xy)-sum(x)*sum(lny))/(n*sum(x2)-(sum(x))^{2})

#Obtenemos el valor de la intersección con el eje y con la formula 
B <- (sum(lny)-m*sum(x))/n

#Definimos a Y como los valores de la recta 
Y <- m*x+B

#Graficamos la linea recta 
lines(x,Y,col=2,lwd=2)

#Volvemos a graficar los datos originales para graficar la 
# ecuacion que mejor se ajusta a ellos 
plot(x,y)

#El valor de m es el mismo pero el de b es e^{B}
b <- exp(B)

#Creemos que el mejor ajuste es un decaimiento exponencial 
Y <- b*exp(m*x)

#Graficamos la ecuacion 
lines(x,Y,col='red',lwd=2)
