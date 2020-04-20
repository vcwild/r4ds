ggplot(mpg) +
    geom_boxplot(aes(x = reorder(class, hwy, FUN = median), y = hwy)) + 
    coord_flip()
    