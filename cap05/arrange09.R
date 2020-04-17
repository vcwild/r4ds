flights %>% 
    group_by(month, day) %>% 
    summarize(
        cancelled = sum(is.na(arr_delay)),
        avg_dep_delay = mean(dep_delay, na.rm = TRUE), 
        avg_arr_delay = mean(arr_delay, na.rm = TRUE)
    ) %>% 
    filter(cancelled > 0) %>%
    arrange(desc(cancelled))
