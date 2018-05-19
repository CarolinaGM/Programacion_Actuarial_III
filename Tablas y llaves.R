library(data.table)
tables()
DT <- data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

DT <- data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

tables()
 
DT[2,]
DT[DT$y == "a",]
DT[c(2,3)]
DT[,c(2,3)]

{
    x=1
    y=2
}
k = {print(10);5} 
print(k)

DT[,list(mean(x),sum(z))]
DT[,table(y)]
DT[,w := z^2]
DT2 <- DT
DT[,y:=2]
head(DT)
head(DT2)
DT[,m:={tmp <- (x+z); log2(tmp+5)}]
DT[,a := x>0]
DT[,b := mean(x+w), by=a]


DT <- data.table(x=sample(letters[1:3]),1E5,TRUE)

#setkey te indica cual es la llave en la tabla 


set.seed(13435)
x <- data.frame("var1" = sample(1:5),"var2" = sample(6:10),"var3" = sample(11:15))
x <- x[sample(1:5),]; x$var2[c(1,3)]=NA
x
x[,1]
x[,"var1"]
x[1:2,"var2"]

# | significa ó 
# & significa y
x[(x$var1 <= 3 & x$var3 > 11),]

x[which(x$var2 > 8),]

#sort permite ordenar valores
sort(x$var1)
sort(x$var1,decreasing = TRUE)
sort(x$var2,na.last = TRUE)
x[order(x$var1),]
order(x$var1)
