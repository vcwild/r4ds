library(nycflights13)
library(dplyr)

mutate(
    select(
        flights,
        year:day,
        ends_with("delay"),
        distance,
        air_time
    ),
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
)
