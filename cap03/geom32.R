library(ggplot2)
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
    geom_jitter() +
    geom_smooth(se = TRUE)