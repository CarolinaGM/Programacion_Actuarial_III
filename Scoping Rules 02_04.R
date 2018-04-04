#Scoping Rules 
setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")

lm
lm <- function(x){x*x}
lm
rm(lm)
lm 

search() #Te muestra la lista de busqueda 
library(swirl)
search()

f <- function(x,y) {
  x^2 + y/z
}

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
   potencia 
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia (2)

cubica (3)
cuadrada(2)

ls(environment(cubica))
get("n",environment(cubica))


ls(environment(cuadrada))
get("n",environment(cuadrada))

y <- 10
f <- function(x){
  y <- 2
  y^2+g(x)
}

g <- function(x){
  
  x*y
}

f(3)


#Fechas en R 
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

#Mary Paz 19/06/98
inicio <- unclass(as.Date("1998-06-19"))
final <- unclass(as.Date("2018-04-02"))
final-inicio  #Dias Vivivdos 7227


#POSIXct: Es un entero muy grande; util al guardar los datos en un data frame
#POSIClt: es una lista y guarda un conjunto de informaciom util como el dia de la semana 
weekdays(as.Date("1998-02-19"))
a <- as.POSIXct("1996-04-10")
b <- as.POSIXlt("1996-04-10")


