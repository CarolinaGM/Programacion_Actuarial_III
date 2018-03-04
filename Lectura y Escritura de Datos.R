w <- data.frame(mtcars)
w
dput(w)
dput(w, file= "~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III/Carros.R")
x <- dget(file ="~/Actuaria 3er Semestre/Programacion/Programacion_Actuarial_III/Carros.R")
CarrosCarolina <- data.frame(x)
