diamonds2 <- diamonds %>% 
    mutate(y = ifelse(y < 3 | y > 20, NA, y))
