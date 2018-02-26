#Lista
x <-list(1,"a",TRUE,3+2i,5L, 1:50)
x
#Todos los elementos de una lista mantiene la clase que originalmente tenian 

#Matrix
#Las matrices son vectores con un atributo llamado dimension, este atributo es un vector en si mismo compuesto de dos elementos (nrow,ncol)

m <- matrix(nrow = 2, ncol = 3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matriz 
m <- matrix(data=1:6, nrow = 2, ncol = 3 )
m <- matrix(1:6,2,3)
m
#La manera automatica de llenarse fue columna por columna 
#Si yo quisiera que se llenara fila por fila seria 
m <- matrix(data=1:6, nrow = 2, ncol = 3,byrow = TRUE )
m <- matrix(1:6,2,3,T)
m

#Una manera alternativa de crear una matrix es desde un vector y modificar sus dimensiones
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12
#cbind, unir columnas
cbind(x,y)
#rbind, unir filas
rbind (x,y)

#Factores
x <- factor(c("Si","Si","No","No","Si"))

#Factores por orden alfabetio
xx <-factor(c("Azul","Verde","Verde","Azul","Rojo"))
xx

table(xx)
unclass(xx)

#Factores con orden definido
x <-factor(c("Azul","Verde","Verde","Azul","Rojo"),levels = c("Rojo","Amarillo","Verde","Naranja"))
x

x <-factor(c("Azul","Verde","Verde","Azul","Rojo"),levels = c("Rojo","Amarillo","Verde","Azul"))
x
unclass(x)

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor faltante detectado
is.nan(x) #Valor no numerico que no es faltante

#lOS Na y NaN siempre son valores faltantes
y <- c(1,2,NaN,10,3)
is.na(y) #Valor faltante detectado
is.nan(y) #Valor no numerico que no es faltante

#Data Frame, puede tener elementos de diferentes clases 
x <- data.frame(foo=1:4,bar= c(T,T,F,F))
x
nrow(x) 
ncol(x)

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf") #Asi se le puede asignar un nombre a las columnas
x
names(x)

x <- list(a=1,b=2,c=3)
x

m <- matrix(1:4, nrow=2, ncol= 2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m