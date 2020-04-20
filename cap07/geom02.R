ggplot(diamonds) +
    geom_histogram(aes(x = carat), binwidth = 0.5)