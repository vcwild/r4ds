flights %>%
    group_by(dest) %>% 
    mutate(
        n_carrier = n_distinct(carrier)
    ) %>% 
    filter(n_carrier > 1) %>% 
    ungroup() %>% 
    group_by(dest, carrier) %>% 
    summarize(
        n_flights = n()
    ) %>%
    mutate(
        ranking = min_rank(desc(n_flights))
    ) %>%
    filter(ranking %in% c(1, 2)) %>% 
    arrange(dest, ranking) %>% 
    view()

