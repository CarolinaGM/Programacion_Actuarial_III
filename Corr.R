setwd("~/Actuaria 3er Semestre/Programacion")
directorio <- getwd()
directorio

Corr <- function(directorio,horizonte=0){

    vec <- c()
    for (i in 1:332){
        
        if (i < 10){
            ar <- paste(directorio,"/specdata/","0","0",i,".","csv",sep="")
        } else if(i < 100){
            ar <- paste(directorio,"/specdata/","0",i,".","csv",sep="")
        } else if (i > 99){
            ar <- paste(directorio,"/specdata/",i,".","csv",sep="")
        }
        
        data <- read.csv(ar)
        completos <- complete.cases(data)
        data1 <- data[completos,]
        num <- nrow(data1)
        
        if(num > horizonte){
            cols <- data.frame(data1[,2])
            coln <- data.frame(data1[,3])
            correl <- cor(cols,coln)
            vec <- c(vec,correl)
    }
  }
vec
}

Corr(directorio)

