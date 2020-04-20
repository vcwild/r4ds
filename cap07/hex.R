library(hexbin)

ggplot(smaller) +
    geom_hex(aes(x = carat, y = price))