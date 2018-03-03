#Lectura y escritura de datos 

#dput y dget

#1. Creo el objeto
y <- data.frame(a=1, b="a")
y
#2. Estudio la manera en la que se guardara
dput(y)
#3. lo guardo en mi disco duro
dput(y,file="y.R")
#4. Genero un nuevo objeto a partir de la informacion guardada
y2 <- dget(file="y.R")




w <- data.frame(a=1, b="a")
w
#2. Estudio la manera en la que se guardara
dput(w)
#3. lo guardo en mi disco duro
dput(w,file="w.R")
#4. Genero un nuevo objeto a partir de la informacion guardada
w2 <- dget(file="w.R")

#Tarea almacenar en tu disco duro la base de datos
#mtcars en un archivo "carros.R" y posteriormente guardalo en un dataframe que se llame carros(tunombre)