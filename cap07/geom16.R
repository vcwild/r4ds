ggplot(diamonds, aes(x = price)) +
    geom_freqpoly(aes(color = cut), binwidth = 500)
