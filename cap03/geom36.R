ggplot(data = diamonds, aes(x = cut, fill = cut)) +
    geom_bar(show.legend = FALSE, width = 1) +
    theme(aspect.ratio = 1) +
    labs(x = NULL, y = NULL) + 
    coord_flip()
