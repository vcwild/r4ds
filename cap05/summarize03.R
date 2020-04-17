library(nycflights13)
library(dplyr)

delay <- filter(
    summarize(
        group_by(
            flights,
            dest
        ),
        count = n(),
        dist = mean(distance, na.rm = TRUE),
        delay = mean(arr_delay, na.rm = TRUE)
    ),
    count > 20, dest != "HNL"
)

ggplot(delay, aes(x = dist, y = delay)) +
    geom_point(aes(size = count), alpha = 1/3) +
    geom_smooth(method = "loess", formula = y ~ x, se = FALSE)