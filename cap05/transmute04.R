transmute(
    flights,
    flight,
    dep_min = (dep_time %/% 100) * 60 + dep_time %% 100,
    arr_min = (arr_time %/% 100) * 60 + arr_time %% 100,
    flight_time = arr_min - dep_min
)