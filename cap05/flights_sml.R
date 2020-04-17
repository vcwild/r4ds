flights_sml <- flights %>% 
    select(
        year:day,
        ends_with("delay"),
        distance,
        air_time
    )