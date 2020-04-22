library(tidyverse)

tidy4b <- table4b %>% 
    pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "population")
