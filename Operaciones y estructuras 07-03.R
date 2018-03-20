#Extraccion de valores faltantes 
setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")

airquality[1:6,]
completos <- complete.cases(airquality) #Evalua casos completos
#Complete cases te muestra con TRUE las filas que tiene todos los datos y False los que no 
data <- airquality[completos,]
data[1:6,]

#Al hacer una extracion de logicos, obtengo solo los valores que son TRUE

#Algunas operaciones 
x <- 1:4; y <- 6:9 #Se pueden generar varios vectores al mismo tiempo separandolas con ;
x+y
x > 2
x >= 2
y==8
x*y
x/y


#Operaciones con matrices 
x<- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
x;y;x%*%y
y%*%x

#Estructuras de control 
#If

x = 5
if (x > 5)
{
  "El numero es mayor que 5"
} else if (x<5)
{
  "El numero es menor que 5"
} else 
{
    "x es igual a 5"
}

x = 7

if (x<5) 
{
  "El numero es menor que 5"
} else if (x<=10) 
{
  "El numero esta en el intervalo del 5 al 10 "
} else
{
  "El numero es mayor a 10"
}

x=3
if (x>3) {
  y <- 10
} else 
{
  y <- 0
}

#La expresion anterior es equivalente a:
y<- if (x>3) {
  10
}else 
{
  0
}


#Ciclo for 
#La forma en la que trabaja for dentro de R, es mas similar al for Each de VB

for (i in 1:10) {
  print(i)
}

for (i in c("a","b","c")) {
  print(i)
}

x <- c("a","b","c","d")
#Se conoce el tamaño del vector
for (i in 1:4){
  print(x[i])
}

#Se desconoce el tamaño del vector 
for (i in seq_along(x)){
  print(x[i])
}

for (letra in x){
  print(letra)
}

for (i in 1:4) print (x[i])

#Ciclos For anidados
x <- matrix(1:6,2,3)
 for (i in seq_len(nrow(x))){
   for (j in seq_len(ncol(x))){
     print(x[i,j])
   }
 }

#Ciclo While 
count <- 0
while (count < 10){
  print(count)
  count <- count +1
}

#Ejemplo con while modificado con instrucciones de Nacho
set.seed(1)
z <- 5
x <- vector("numeric")
while(z>=3 && z <=10){
  moneda <- rbinom(1,1,0.5) #(numero de aciertos en una cantidad de intentos,numero de intentos,probabilidad de exito)
  x <- c(x,z)
  if(moneda==1){ #Caminata Aleatoria
     z <- z+1
  } else {
     z <- z-1
  }
}
print("Se realizaron"); print(contador); print("pasos");print(x)
plot(x,type = "b") #Para graficar y que los ´puntos esten unidos por una linea


vec <-
set.seed(1)
z <- 5
contador <- 0
while(z>=3 && z <=10){
  vec <- c(vec,z)
  moneda <- rbinom(1,1,0.5) #(numero de aciertos en una cantidad de intentos,numero de intentos,probabilidad de exito)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador+1
}
print("Se realizaron"); print(contador); print("pasos");print(vec)


set.seed(1)
con1 <- 0 
con2 <- 0
rep <- 10
for(i in 1:rep){
  z <- 6.5
  x <- vector("numeric")
  while(z>=3 && z <=10){
    moneda <- rbinom(1,1,0.5) #(numero de aciertos en una cantidad de intentos,numero de intentos,probabilidad de exito)
    x <- c(x,z)
    if(moneda==1){ #Caminata Aleatoria
      z <- z+1
    } else {
      z <- z-1
    }
  }
  
   if(z<3){
     con1 <- con1 +1 
   } else if (z > 10){
     con2 <- con2+1
   }
}
paste("En",rep,"intentos, se escapa",con1,"veces por abajo y",con2,"por arriba")
paste("La probabilidad de que salir por abajo es",con1/rep)



for(i in 1:10){
  if(i<=20){
    next
  }
  #otras operaciones
}

