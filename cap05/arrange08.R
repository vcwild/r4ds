not_cancelled %>% 
    group_by(dest) %>% 
    summarize(carriers = n_distinct(carrier)) %>% 
    arrange(desc(carriers))