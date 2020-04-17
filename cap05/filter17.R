daily %>% 
    group_by(tailnum) %>% 
    summarize(
        arr_on_time = mean(arr_delay == 0),
        on_time = sum(arr_delay == 0),
        p_arr_two_late = mean(arr_delay == 120),
        two_hours_late = sum(arr_delay == 120)
    ) %>%
    filter(arr_on_time >= 0.99 | p_arr_two_late <= 0.01 & p_arr_two_late > 0)