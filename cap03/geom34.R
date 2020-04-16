ggplot(mpg, aes(class, hwy)) +
    geom_boxplot() +
    coord_flip()