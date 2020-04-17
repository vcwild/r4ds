daily %>% 
    summarize(early_median = median(dep_delay[dep_delay <= 30]),
              late_median = median(dep_delay[dep_delay >= 30]))