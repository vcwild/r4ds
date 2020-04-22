table4a %>% 
    pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "cases")
