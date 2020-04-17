not_cancelled %>%
    mutate(
        dep_time_hour = dep_time %/% 100
    ) %>%
    group_by(dep_time_hour) %>% 
    summarize(
        count = n(),
        avg_arr_on_time = mean(arr_delay <= 0)
    ) %>%
    arrange(desc(avg_arr_on_time))