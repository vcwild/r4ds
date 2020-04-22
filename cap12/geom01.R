library(tidyverse)

ggplot(table1, aes(year, cases)) +
    geom_line(aes(group = country), color = "grey50") +
    geom_point(aes(color = country))