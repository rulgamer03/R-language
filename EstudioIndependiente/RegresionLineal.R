graphics.off()
remove(list=ls())

Datos <- read.csv('Regresion_Lineal.csv')
Datos

Datos[1,1]
Datos[2,2]
DatosX <- Datos[1:12,1]
DatosY <- Datos[1:12,2]
DatosX
DatosY
plot(DatosX,DatosY)


n <- length(DatosX)
n
x <- DatosX
y <- DatosY
xy <- DatosX*DatosY
x2 <- (DatosX)^{2}
m <- (n*sum(xy)-sum(x)*sum(y))/(n*sum(x2)-(sum(x)^2))

m

b <- (sum(y)-m*sum(x))/(n)
b

X <- x 
Y <- m*X + b

X
Y

lines(X,Y, col='red')
lines(X,Y, col=4,lwd=3)

