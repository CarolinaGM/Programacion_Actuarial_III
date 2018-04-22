#Manejo de errores 
setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")

#Produce un warning message
log(-1)

imprimeMSJ <- function(x){
    if (x>0)
        print("x es mayor que 0")
    else 
        print("x es menor o igual a 0")
    invisible(x)
}

imprimeMSJ(1)
#produce un error 
imprimeMSJ(NA)

imprimeMSJ <- function(x){
    if (is.na(x))
    print("x es un valor faltante")   
    else if (x>0)
        print("x es mayor a 0")
       else (x<0)
            print("x es menor o igual que 0")   
        invisible(x)
}

imprimeMSJ(NA)
  
#Para borar memoria
rm(list=ls())

#Herramientas para depurar
#Traceback
mean(x)
traceback()        

lm(y ~ x)        
traceback()  

#debug
debug(lm)
lm(y ~ x)

n
debug(eval)
undebug(eval)

#Recover
#Para ver donde esta el error 
options(error=recover)
read.csv("El amor es una utopia")

#Solo te manda msj de error 
options(error = stop )
read.csv("El amor es una utopia")

#SIMULACION 
str(str)
str(lm)
str(ls)

x <- rnorm(100)
str(x)  #Estructura, como es el objeto hablando computacionalmente

summary(x) #Resumen de como es el objeto estadisticamente hablando 
 
f <- gl(40,10)
str(f)
summary(f)

str(airquality)
summary(airquality)

m <- matrix(rnorm(100),10,10)
str(m)
summary(m)

s <- split(airquality,airquality$Month)
str(s)

x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
 summary(x)
summary(y) 
