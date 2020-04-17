summarize(
    flights,
    delay = mean(dep_delay, na.rm = TRUE)
)