ggplot(mpg, aes(displ, hwy, linetype = drv, color = drv)) +
    geom_point() +
    geom_smooth()
