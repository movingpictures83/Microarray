#Install affy & gcrma packages: 
#source("http://bioconductor.org/biocLite.R") 
#biocLite("affy")
#biocLite("gcrma")

#Load affy:
library("affy")
library("gcrma")


#Set the working directory where the CEL files from your microarray experiment are located:
input <- function(inputfile) {
tmp <- getwd();
setwd(inputfile)
Data <<- ReadAffy()
setwd(tmp)
}

#Use gcrma to background correct (also for wrong bindings) and normalize probe levels:
run <- function() {
eset <- gcrma(Data)
e <<- exprs(eset)
}

output <- function(outputfile) {
write.table(e, outputfile)
}
