ggplot(faithful, aes(x = eruptions)) +
    geom_freqpoly(binwidth = 0.25)