ggplot(mpg, aes(displ, hwy, color = drv)) +
    geom_point() +
    geom_smooth(se = FALSE)