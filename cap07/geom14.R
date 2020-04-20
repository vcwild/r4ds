ggplot(diamonds2) +
    geom_boxplot(aes(x = cut, y = resid))
