#Funciones
setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")

suma2 <- function(x,y){
  x+y
}
suma2(1,3)

mayor10 <- function(x){
  seleccionados <- x>10
  x[seleccionados]
}
mayor10(1:20)

mayor <- function(x,n=10){
  seleccionados <- x>n
  x[seleccionados]
}

#Dado que la funcion tiene n=10, al no colocar el argumento en un 
mayor(1:20)
#En una funcion, si yo escriibo los parametros en orden no es necesario escribir el nombre del argumento 
mayor(1:20,15)
#Si escribo los argumentos en desorden si es necesario 
mayor(n=15,x=1:20)


PromedioCol <- function(x,quitarNA=TRUE) {
  nc <- ncol(x)
  medias <- vector("numeric",nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i],na.re=quitarNA)
  }
    medias
}
    
x <- matrix(1:100,20,5)
PromedioCol(x)

#Funcion Perezosa, te enseña los resultados como los va obteniendo y si encuntra un error te dice y deja de ejecutar las operaciones
f <- function(a,b){
  a^2
}

f(2)

g <- function(a,b){
  print(a)
  print(b)
}

g(3,"Hola")


miplot <- function(x,y,type="l",...){
  plot(x,y,type=type,...)
}

miplot(1:10,10:1)
plot(1:10,10:1)
miplot(1:10,10:1,main="Mi Grafica")
miplot(1:10,10:1,main="Mi Grafica",perro="123")
#Aqui obtenemos warnings que a diferencia de los errores, no detienen la ejecucion del codigo

paste("Jose","Paz","Alex","Arlet","Susie",sep="/")

#Despues del argumento ... cualquier otro argumento debe llevar su nombre 
mypaste <- function(sep= " ", ...){
  paste(..., sep=sep) 
}
#Antes de ... no es necesario mencionar el nombre del argumento 
mypaste("/","Jose","Paz","Alex","Arlet","Susie")
 
#Tarea
install.packages("swirl")
library(swirl)
swirl()