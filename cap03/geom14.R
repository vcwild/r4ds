ggplot(mpg, aes(displ, hwy)) +
    geom_point() +
    geom_smooth(aes(group = drv), se = FALSE)
