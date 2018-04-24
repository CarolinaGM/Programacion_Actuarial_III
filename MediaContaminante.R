setwd("~/Actuaria 3er Semestre/Programacion")
directorio <- getwd()
directorio

MediaContaminante <- function(directorio, contaminante = "sulfate",id = 1:332){
    
    if (contaminante == "sulfate"){
        col = 2
    }else if (contaminante == "nitrate"){
        col = 3
    }
    
    n <- 1
    x <- c()
    for (i in id){
        nar <- id[n]
        
        if (nar < 10){
            ar <- paste(directorio,"/specdata/","0","0",nar,".","csv",sep="")
        } else if(nar < 100){
            ar <- paste(directorio,"/specdata/","0",nar,".","csv",sep="")
        } else if (nar > 99){
            ar <- paste(directorio,"/specdata/",nar,".","csv",sep="")
        }
        
        lec <- na.omit(read.csv(ar))
        prom <- mean(lec[,col], na.rm = TRUE) 
        x <- c(x,prom)
        n <- n+1
    }
    media <- mean(x,na.rm = TRUE)
    media
}

MediaContaminante(directorio)





