summarize(
    group_by(
        .data = flights, 
        year, 
        month, 
        day
    ),
    delay = mean(dep_delay, na.rm = TRUE)
)
