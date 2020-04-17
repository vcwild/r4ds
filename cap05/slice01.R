library(nycflights13)
library(dplyr)

slice(
    arrange(
        transmute(
            flights,
            flight,
            ranking_delay = min_rank(desc(dep_delay)),
            dep_delay,
        ),
        ranking_delay
    ), 
    1:10
)