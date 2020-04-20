ggplot(diamonds) + 
    geom_histogram(aes(x = price)) +
    facet_wrap(~cut)