setwd("~/Actuaria 3er Semestre/Programacion")
directorio <-getwd()
directorio

rankhospital <- function(estado, resultado, num = "mejor"){
    
    ar <- paste (directorio,"/Calidad de Hospitales/","outcome-of-care-measures",".","csv", sep= "")
    outcome <- read.csv(ar,colClasses = "character")
    
    if(!(resultado %in% c("ataque","falla","neumonia"))){
        stop("resultado invalido")
    }
    
    estados <- outcome[,7]
    factores <- unique(estados)
    if(!(estado %in% factores)){
        stop("estado invalido")
    }
    
    if(resultado == "ataque"){
        col = 11
    }else if(resultado=="falla"){
        col=17
    }else if(resultado=="neumonia"){
        col=23
    }
    
    
    
    if(num == "mejor"){
        arch <- outcome[outcome$State == estado,]
        result <- arch[,col]
        cont <- suppressWarnings(as.numeric(result))
        menor <- which.min(cont)
        nummin <- arch[menor,]
        name <- nummin[,2]
        orden <- order(name)
        hosp <- orden[1]
        namehops<- name[hosp]
        namehops
        
    }else if(num == "peor"){
        arch <- outcome[outcome$State == estado,]
        result <- arch[,col]
        cont <- suppressWarnings(as.numeric(result))
        menor <- which.max(cont)
        nummin <- arch[menor,]
        name <- nummin[,2]
        orden <- order(name)
        hosp <- orden[1]
        namehops<- name[hosp]
        namehops
        
    }else if(num == num){
        arch <- outcome[outcome$State == estado,]
        ordenhos<- arch[order(arch$Hospital.Name, na.last = NA),]
        result <- ordenhos[,col]
        cont <- suppressWarnings(as.numeric(result))
        orden <- order(cont)
        pos <- orden[num]
        namehops<- ordenhos[pos,2]
        namehops
        
    }
    
}

rankhospital("TX","falla",4)
