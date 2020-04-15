ggplot(mpg, aes(displ, hwy)) +
    geom_point(color = "white", size = 5) + 
    geom_point(aes(color = drv))