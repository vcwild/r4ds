not_cancelled %>% 
    group_by(year, month, day) %>% 
    summarize(
        first_dep = first(dep_time),
        last_dep = last(dep_time)
    )