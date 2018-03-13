#Dump y Source
#Trabaja con las instrucciones de codigo que permitan construir un obtejo en lugar de obtenerlo de alguna ubicacion guardada.

setwd("~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III")
x <- "Programacion Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file= "Data.R")
rm(x,y)
source("Data.R")


#Conexiones
Con <- url("https://www.fcfm.buap.mx/")
x <- readLines(Con)
x[7] <- "\t<title>FCFM</title>"
writeLines(x,"FCFM.html")

#Extracciones
#Operadores para extraer subconjuntos 
#[ Regresa un objeto de la misma clase de la oroginal, si extraigo una parte de una lista la parte extraida sera una lista
# [[ Extrae un elemento de una lista o data frame, solamente extrae un dato 
# $ se usa para extraer elementos de una lista o data frame por nombre 

#Extraccion de elementos de un vector 
#Creamos un vector
x <- c("a","b","c","c","d","e")
#Veamos el vector
x
#Extraemos los elementos con []
x[1]
x[2]
#Tambien se pueden extraer una secuencia de elementos 
x[1:4]
#Es posible extraer los elementos que cumplen una restriccion 
x[x>"b"]
#De una manera similar se puede obtener un vector logico 
u <- x=="c" 
u
x [u]
x[5-3]


#Extraccion de elementos de una lista 
x <- list(foo=1:4,bar=0.6)
x
x[1] #Conserva la clase del objeto de donde fueron extraidos los elementos
x[[1]] #Conserva la clase del objeto extraido 
x$foo #El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]


x <- list(foo=1:4,bar=0.6,baz="Hola")
x[c(1,3)]  #Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]] # Extrae secuencialmente desde los elementos extraidos, primero extrae el primer elemento y de ahi extrae la tercera  posicion 

name <- "baz"
x[name]
x[[name]]
x$name # Si yo quiero realizar extracciones con $ es necesario escribir el nombre del objeto que quiero extraer, ya que no es capaz de realizar evaluaciones 

#Se pueden extraer elementos de los extraidos
x <- list(a=list(10,12,14), b= list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#Extraccion de matriz 
x <- matrix(1:6,2,3)
x
x[1,2] #El resultado es un vector 
x[2,1]

#Con drop=false, se mantiene la dimension y el resultado sera una matriz 
x [1,2,drop=F]

#Si dejamos solamente el espacio, el resultado sera una vector
 x[1,]

 #Si usamos drop=False, el resultado sera una matriz
 x[1,,drop=F]

 
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a",exact=F]]



