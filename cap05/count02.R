not_cancelled %>% 
    count(tailnum, wt = distance)