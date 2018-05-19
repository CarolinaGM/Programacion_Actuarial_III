getwd()
tail(list.files(),2)
setwd("./zu-ZA")
getwd()
setwd("../")
getwd()

setwd("~/Actuaria 3er Semestre/Programacion")

#Descarga con formato csv 

if (!file.exists("data")){
    dir.create(("data"))
}

#UrlArchivo <- "https://data.baltimorecity.gov/Transportation/Baltimore-Fixed-Speed-Cameras/dz54-2aru/data"

UrlArchivo <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD" 
download.file(UrlArchivo,destfile = "./data/camaras.csv")

list.files("./data")

FechaDescarga <- date()

DatosCamara <- read.table("./data/camaras.csv")
head(DatosCamara)

DatosCamara <- read.table("./data/camaras.csv",sep=",",header = TRUE )
head(DatosCamara)


#Descarga con formato xlsx

if (!file.exists("data")){
    dir.create(("data"))
}

url <-  "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(url,destfile = "./data/camaras.xlsx")
fechadescarga <- date()



#Lectura en formato XML
url <- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url, useInternalNodes = TRUE)


#Lectura en formato Json
jsonData <- fromJSON("https://api.github.com/users/CarolinaGM/repos") 
names(jsonData)
jsonData$name
myjson <- toJSON(iris,pretty = TRUE)
cat(myjson)
iris2 <- fromJSON(myjson)
head(iris2)



install.packages("jsonlite")
library(jsonlite) 
install.packages("rJava")
library(rJava)
install.packages("xlsx")
library(xlsx)
install.packages("XML")
library(XML)
library(swirl)
