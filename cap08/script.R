library(tidyverse)


ggplot(diamonds, aes(carat, price)) +
    geom_hex()

ggsave("diamonds.png")

write_csv(diamonds, "diamonds.csv")