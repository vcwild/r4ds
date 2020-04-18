destinations <- not_cancelled %>% 
    group_by(dest, carrier) %>%
    summarize(
        flight_count = n()
    ) %>% 
    mutate(
        rank = rank(desc(flight_count))
    ) %>% 
    filter(rank == 2) %>% 
    select(dest)

not_cancelled %>% 
    filter(dest %in% destinations[[1]]) %>% 
    group_by(dest, carrier) %>% 
    summarize(
        flight_count = n()
    ) %>% 
    mutate(rank = rank(desc(flight_count))) %>% 
    filter(rank %in% c(1, 2)) %>% 
    arrange(dest, rank)

