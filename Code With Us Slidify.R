install.packages("devtools")
library(devtools)

install_github('ramnathv/slidify')
install_github('ramnathv/slidifyLibraries')
install_github('ramnathv/rCharts')

setwd("C:/Users/Acer/Desktop/Code With Us")


library(slidify)
author("Code With Us Slidify")

slidify("index.Rmd")
browseURL("index.html")
