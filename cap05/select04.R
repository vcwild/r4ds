library(dplyr)
library(nycflights13)

(select(flights, num_range("x", 1:3)))