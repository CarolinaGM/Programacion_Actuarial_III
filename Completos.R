setwd("~/Actuaria 3er Semestre/Programacion/Specdata")
directorio <- getwd()
directorio

completos <- function(directorio, id =1:332){
  
    vec <- c()
    n <- 1
   for (i in id){
       nar <- id[n]
       
       if (nar < 10){
           ar <- paste(directorio,"/specdata/","0","0",nar,".","csv",sep="")
       } else if(nar < 100){
           ar <- paste(directorio,"/specdata/","0",nar,".","csv",sep="")
       } else if (nar > 99){
           ar <- paste(directorio,"/specdata/",nar,".","csv",sep="")
       }
       
       data <- read.csv(ar)
       completos <- complete.cases(data)
       data1 <- data[completos,]
       num <- nrow(data1)
       vec <- c(vec,num)
       n <- n+1
       
   }
    x <- data.frame(ID=id,nobs= vec)
    x
}
completos(directorio)

