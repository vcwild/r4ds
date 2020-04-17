not_cancelled %>% 
    group_by(year, month, day) %>% 
    summarize(n_early = sum(dep_time < 500))