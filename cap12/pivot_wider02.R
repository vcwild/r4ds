stocks %>% 
    pivot_wider(names_from = year, values_from = return)
