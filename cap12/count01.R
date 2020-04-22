library(tidyverse)

# Compute cases per year
table1 %>% 
    count(year, wt = cases)
