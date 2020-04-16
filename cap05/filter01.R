library(tidyverse)
library(nycflights13)
(dec25 <- filter(flights, month == 12 | month == 11, day == 25))
 