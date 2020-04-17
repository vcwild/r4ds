not_cancelled %>% 
    count(dest)

not_cancelled %>%
    group_by(dest) %>% 
    summarize(
        n = n()
    )




# dest --------------------------------------------------------------------

not_cancelled %>% 
    count(tailnum, wt = distance)

not_cancelled %>% 
    group_by(tailnum) %>% 
    summarize(
        n = sum(distance)
    )
