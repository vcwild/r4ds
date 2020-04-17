not_cancelled %>% 
    group_by(year, month, day) %>% 
    summarize(
        first = min(dep_time),
        last = max(dep_time)
    )