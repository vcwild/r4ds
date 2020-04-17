popular_dests <- flights %>% 
    group_by(dest) %>% 
    filter(n() > 365)

popular_dests
