library(ggplot2)

ggplot(diamonds, aes(x="", fill = cut)) + 
    geom_bar(width = 1) +
    coord_polar("y")
