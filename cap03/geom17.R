ggplot(mpg, aes(displ, hwy)) +
    geom_point(aes(color = drv)) +
    geom_smooth(aes(linetype = drv), se = FALSE)