ggplot(diamonds) +
    geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
    coord_cartesian(xlim = c(0, 5), ylim = c(0, 10))
