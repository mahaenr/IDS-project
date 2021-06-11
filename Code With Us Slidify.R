install.packages("devtools")
library(devtools)

install_github('ramnathv/slidify')
install_github('ramnathv/slidifyLibraries')

setwd("C:/Users/Acer/Desktop/Introduction to Data Science WIE2003/Assignment/Code with Us")

library(slidify)
author("Code With Us Slidify")

slidify('index.Rmd')
browseURL("idex.html")
