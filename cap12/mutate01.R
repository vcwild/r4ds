library(tidyverse)

# Compute rate per 10,000
table1 %>% 
    mutate(rate = cases / population * 10000)