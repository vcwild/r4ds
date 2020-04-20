ggplot(diamonds, aes(x = price, y = ..density..)) +
    geom_freqpoly(aes(color = cut), binwidth = 500)
