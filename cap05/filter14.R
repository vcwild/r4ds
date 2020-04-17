delays %>% 
    filter(n > 25) %>% 
    ggplot(mapping = aes(x = n, y = delay)) +
        geom_point(alpha = 1/10)
