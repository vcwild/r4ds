mutate(
    select(
        flights,
        year:day,
        ends_with("delay"),
        distance,
        air_time
    ),
    gain = dep_delay - arr_delay,
    hours = air_time / 60,
    gain_per_hour = gain / hours
)