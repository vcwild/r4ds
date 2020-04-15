ggplot(data = mpg) + 
    geom_point(mapping = aes(displ, hwy, shape = class), size = 2, color = "blue")

