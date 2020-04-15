ggplot(mpg, aes(displ, hwy, color = displ < 5)) +
    geom_point()

