ggplot(mpg) +
    geom_point(aes(displ, hwy, stroke = class))
