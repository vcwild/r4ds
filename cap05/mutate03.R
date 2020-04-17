popular_dests %>% 
    filter(arr_delay > 0) %>% 
    mutate(prop_delay = arr_delay / sum(arr_delay)) %>% 
    select(year:day, dest, arr_delay, prop_delay)