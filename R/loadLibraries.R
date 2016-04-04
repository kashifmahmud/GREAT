# do this once
# devtools::install_bitbucket("remkoduursma/plotby")
library(plotBy)

#r <- require(HIEv)
#if(!r)stop("Install the HIEv R package from bitbucket.org/remkoduursma/hiev")

#- function to load a package, and install it if necessary
Library <- function(pkg, ...){
  
  PACK <- .packages(all.available=TRUE)
  pkgc <- deparse(substitute(pkg))
  
  if(pkgc %in% PACK){
    library(pkgc, character.only=TRUE)
  } else {
    install.packages(pkgc, ...)
    library(pkgc, character.only=TRUE)
  }
  
}
Library(doBy)
Library(magicaxis)
Library(RColorBrewer)
Library(propagate)
Library(gplots)
Library(scales)
Library(readxl)
source("R/generic_functions.R")
source("R/GREAT_functions.R")
