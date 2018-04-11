#Vectorizar una funcion 
#significa que puede trabajar con vectores
setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")

noise <- function(n,mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)
noise(1:5,1:5,2)

#mapply sirve para trabajr funciones con vectores 
mapply(noise,1:5,1:5,2)

str(tapply)
# x es un vector, INDEX es un factor o una lista de factores, FUN es una funcion
#a aplicar, ... otros argumentos a pasar a FUN, simplifly T O F si se desea 
#simplificar el resultado 
#Toma los vectores para aplicar una funcion y como resultado me da una tabla

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
#gl es general leves (repite 10 veces el numero 1, 10 el 2 y 10 el 3)

tapply(x,f,mean)
tapply(x,f,mean,simplify=FALSE)

str(split)
#x es un vector, una lista o un data frame, f es un factor o lista de factores
#drop indica si los valores vacios deberian de omitirse

x <- c(rnorm(10),runif(10),rexp(10))
f <- gl(3,10) 
f
split(x,f)

lapply(split(x,f),mean)

library(datasets)
head(airquality)

split(airquality,airquality$Month)
sapply(split(airquality,airquality$Month),colMeans,na.rm=TRUE)

colMeans(airquality, na.rm=TRUE)

x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)

f1
f2

interaction(f1,f2)
x
str(split(x,list(f1,f2)))

#numero de cilindros, promedio del numero de caballos
split(mtcars,mtcars$cyl)

sapply(split(mtcars,mtcars$cyl),colMeans)
sapply(split(mtcars$hp,mtcars$cyl),mean)