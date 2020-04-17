transmute(
    flights,
    dep_time,
    hour = dep_time %/% 100,
    minute = dep_time %% 100
)