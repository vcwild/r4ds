diamonds %>% 
    count(color, cut) %>% 
    ggplot(aes(x = color, y = cut)) +
        geom_tile(aes(fill = n))
