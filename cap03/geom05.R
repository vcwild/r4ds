ggplot(mpg) +
    geom_point(aes(displ, hwy)) +
    facet_grid(drv ~ cyl)
        