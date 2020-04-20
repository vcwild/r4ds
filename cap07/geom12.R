ggplot(data = diamonds) +
    geom_point(mapping = aes(x = x, y = y)) +
    coord_cartesian(xlim = c(4, 11), ylim = c(4, 11))
