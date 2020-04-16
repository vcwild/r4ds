ggplot(diamonds) +
    geom_bar(aes(x = "", fill = cut), show.legend = TRUE, width = 1) +
    theme(aspect.ratio = 1) +
    labs(x = NULL, y = NULL) +
    coord_polar(theta = "y", start = 0)
