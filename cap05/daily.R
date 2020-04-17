daily <- not_cancelled %>% 
    group_by(year, month, day)