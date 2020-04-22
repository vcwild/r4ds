library(tidyverse)

t2_cases <- table2 %>% 
    filter(type == "cases") %>% 
    rename(cases = count) %>% 
    arrange(country, year)

t2_pop <- table2 %>% 
    filter(type == "population") %>% 
    rename(population = count) %>% 
    arrange(country, year)

t2_tidy <- tibble(
    country = t2_cases$country,
    year = t2_cases$year,
    cases = t2_cases$cases,
    population = t2_pop$population
) %>% 
    mutate(rate = (cases / population) * 10000)

ggplot(t2_tidy, aes(year, cases)) +
    geom_line(aes(group = country), color = "grey50") +
    geom_point(aes(color = country))