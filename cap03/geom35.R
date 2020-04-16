library(ggplot2)
library(maps)

ggplot(map_data("nz"), aes(long, lat, group = group)) +
    geom_polygon(fill = "white", color = "black") +
    coord_quickmap()