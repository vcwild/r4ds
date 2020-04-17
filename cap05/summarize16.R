daily %>%
    group_by(month) %>% 
    summarize(
        p_10_late_arr = mean(arr_delay == 10),
        delayed_10_count = sum(arr_delay == 10),
        total_flights = n()
    )