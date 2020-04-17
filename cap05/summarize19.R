not_cancelled %>%
    group_by(year, month, day) %>% 
    summarize(
        dep_early_median = median(dep_delay[dep_delay >= 15]),
        dep_late_median = median(dep_delay[dep_delay <= 15])
        )