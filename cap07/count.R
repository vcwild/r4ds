ggplot(diamonds) +
    geom_count(aes(x = cut, y = color))