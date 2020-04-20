smaller <- diamonds %>% 
    filter(carat < 3)

ggplot(smaller, mapping = aes(x = carat)) +
    geom_histogram(binwidth = 0.1)
