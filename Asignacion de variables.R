#Aqui se esta realizando una asignacion
x <- 1
x <- 2
#La asignacion  no me permitio visualizar el resultado, para ello debo solicitar una impresion
print(x)
#La alternativa es solicitar una impresion implicita 

#asignacion puede hacerse tambien en textos 
msg <- "Hola"

#Al solicitar una impresion, me debera enseñar el mensaje escrito 
print(msg)

x <- #Expresion incompleta, para salir de ella puedes presionar esc
  3

#Impresion de un arreglo
x <- 1:20

x <- 1:20

print(x)

y <- 3:9
y

z <- 99:43
z
# El operador ":"me permite generar secuencias numericas de un principio a un fin
#En caso de trabajar con decimales, se genera una serie hasta el numero entero correspondiente
w <- 3:14.5
w

x
z


#R nos permite trabajar con conceptos matematicos "Superiores" como los numeros complejos o el concepto de infinito 
#Es posible hacer algunas operaciones con este valor 

exp(-Inf) #0
Inf - Inf #NaN
Inf + Inf #Inf 
Inf * Inf #Inf
Inf / Inf #NaN


#Es posible crear un vector con la funcion c()

x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
x

x <- c(1L, 3L, 5L, -4L) #Integer
x

x <- c(1, 3, 5, -4) #Numeric 
x

x <- c(1+1i, 3+4i, -5-6i, 3.14-1.618i) #Complex
x

x <- c( "a", "b", "c") #Character}
x


#Otro posible camino seria con la funcion vector 
x <- vector("numeric", length = 10)
x


#Coaccion
y <- c(1.7, "a") #Character
y

y <- c(TRUE, 2) #Numeric 
y

y <- c(TRUE, 2L, 2) #Numeric 
y


y <- c(FALSE, 2L, 2,4+4i) #Complex
y

#Coercion forzada
x <- 0:6 #Integer
as.numeric(x)
as.logical(x) #Los 0 se vuelven 0 y todo lo demas verdadero 
as.character(x) #Todo es texto


#Errores de coercion forzada 
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)
#Apareceran NA porque la coercion no es posible y genera un valor faltante


#los elementos de un vector son todo del mismo tipo 
#Caracter, complejo, numerico, entero, logico



