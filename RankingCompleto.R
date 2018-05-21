setwd("~/Actuaria 3er Semestre/Programacion")
directorio <-getwd()
directorio


rankingcompleto <- function(resultado,num = "mejor"){
    
    ar <- paste (directorio,"/Calidad de Hospitales/","outcome-of-care-measures",".","csv", sep= "")
    outcome <- read.csv(ar,colClasses = "character")
    
    if(!(resultado %in% c("ataque","falla","neumonia"))){
        stop("resultado invalido")
    }
    
    if(resultado == "ataque"){
        col = 11
    }else if(resultado=="falla"){
        col=17
    }else if(resultado=="neumonia"){
        col=23
    }
    
    a <- levels(factor(outcome$State))
    
    x <- c()
    for(i in a){
        
        if(num == "mejor"){
            arch <- outcome[outcome$State == i,]
            result <- arch[,col]
            cont <- suppressWarnings(as.numeric(result))
            menor <- which.min(cont)
            nummin <- arch[menor,]
            name <- nummin[,2]
            orden <- order(name)
            hosp <- orden[1]
            namehops<- name[hosp]
            x <- c(x,namehops)
            
        }else if(num == "peor"){
            arch <- outcome[outcome$State == i,]
            result <- arch[,col]
            cont <- suppressWarnings(as.numeric(result))
            menor <- which.max(cont)
            nummin <- arch[menor,]
            name <- nummin[,2]
            orden <- order(name)
            hosp <- orden[1]
            namehops<- name[hosp]
            x <- c(x,namehops)
            
        }else if(num == num){
            arch <- outcome[outcome$State == i,]
            ordenhos<- arch[order(arch$Hospital.Name, na.last = NA),]
            result <- ordenhos[,col]
            cont <- suppressWarnings(as.numeric(result))
            orden <- order(cont)
            pos <- orden[num]
            namehops<- ordenhos[pos,2]
            x <- c(x,namehops)
            
        }
        
    }
    y <- data.frame("Hospital"= x,"Estado"= a )
    y
}

head(rankingcompleto("ataque",20),10)
