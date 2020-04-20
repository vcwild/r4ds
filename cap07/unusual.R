unusual <- diamonds %>% 
    filter(y < 3 | y > 20) %>% 
    select(price, x, y, z) %>% 
    arrange(y)

unusual