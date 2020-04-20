ggplot(diamonds) +
    geom_violin(aes(x = cut, y = price))