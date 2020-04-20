ggplot(data = faithful, mapping = aes(x = eruptions)) +
    geom_histogram(binwidth = 0.25)
