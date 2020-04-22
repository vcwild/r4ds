table2 %>% 
    pivot_wider(names_from = type, values_from = count)
