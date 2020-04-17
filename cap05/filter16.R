daily %>% 
    summarize(
        p_15_early_arr = mean(arr_delay <= -15),
        p_15_late_arr = mean(arr_delay >= 15),
        count = n()
    ) %>% 
    filter(p_15_early_arr > 0.5 | p_15_late_arr > 0.5)