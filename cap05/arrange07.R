not_cancelled %>% 
    group_by(dest) %>% 
    summarize(distance_sd = sd(distance)) %>% 
    arrange(desc(distance_sd))