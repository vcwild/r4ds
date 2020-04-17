not_cancelled %>% 
    group_by(tailnum) %>%        
    summarize(
        late = sum(arr_delay > 0)
    ) %>% 
    filter(late > 0) %>% 
    arrange(desc(late))
