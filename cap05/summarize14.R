daily %>% 
    summarize(late_10 = sum(dep_delay == 10))