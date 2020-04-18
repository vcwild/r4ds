library(nycflights13)
library(tidyverse)

flights %>%
    group_by(dest) %>% 
    transmute(
        flight,
        arr_time,
        air_time,
        mean_air_time = mean(air_time, na.rm = TRUE),
        air_distance_ratio = air_time / distance,
        distance,
        speed = (distance * 1000) / (air_time * 60) * 3.6
    ) %>% 
    arrange(air_distance_ratio) %>% head(10)