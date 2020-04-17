library(nycflights13)
library(dplyr)
library(ggplot2)

# Delays are typically temporally correlated: even once the problem that caused the initial delay has been resolved, 
# later flights are delayed to allow earlier flights to leave. 
# Using lag() explore how the delay of a flight is related to the delay of the immediately preceding flight.
# There seems to be little positive correlation.

not_cancelled %>% 
    group_by(origin) %>% 
    arrange(year, month, day, dep_time) %>% 
    mutate(
        lag_dep_delay = lag(dep_delay)
    ) %>% 
    filter(month == 1 & day == 1 & origin == "JFK") %>% 
    select(dep_delay, lag_dep_delay) %>% 
    arrange(desc(origin)) %>%
    filter(!is.na(lag_dep_delay) & lag_dep_delay < 250 & dep_delay < 250) %>% 
    ggplot(aes(lag_dep_delay, dep_delay)) +
        geom_point() +
        geom_smooth(formula = y ~ x, se = FALSE, method = "glm")
               