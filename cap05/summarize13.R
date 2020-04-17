not_cancelled %>% 
    group_by(year, month, day) %>% 
    summarize(hour_prop = mean(arr_delay > 60))