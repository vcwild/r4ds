library(lvplot)
library(ggplot2)

ggplot(diamonds) +
    geom_lv(aes(x = cut, y = carat), fill = "white", color = "black") +
    coord_flip()
