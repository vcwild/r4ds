ggplot(mpg) +
    geom_bar(x = factor(1), fill = drv, show.legend = FALSE, width = 1) +
    theme(aspect.ratio = 1) +
    labs(x = NULL) +
    coord_polar(theta = "y", start = 0)
