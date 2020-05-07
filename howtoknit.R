# how to knit using code

library(knitr)
setwd("type_workdir")
knit2html("document.Rmd")
browseURL("document.html")