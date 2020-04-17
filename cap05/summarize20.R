not_cancelled %>% 
    group_by(dest) %>%
    filter(arr_delay > 0) %>% 
    summarize(
        total_delay = sum(arr_delay),
        total_flights = n(), 
        mean_flight_delay = mean(arr_delay),
        p_flight_delay = mean_flight_delay / n()
    )