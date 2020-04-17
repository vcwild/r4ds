not_cancelled %>% 
    group_by(year, month, day) %>% 
    summarize(
        avg_delay1 = mean(arr_delay),
        avg_delay2 = mean(arr_delay[arr_delay > 0])
    )