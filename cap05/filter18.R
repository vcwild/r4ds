flights_sml %>% 
    group_by(year, month, day) %>% 
    filter(rank(desc(arr_delay)) < 10)