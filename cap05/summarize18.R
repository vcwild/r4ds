daily %>% 
    ungroup() %>% 
    summarize(flights = n())