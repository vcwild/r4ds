ggplot(data = mpg, mapping = aes(displ, hwy)) +
    geom_point(aes(color = class)) +
    geom_smooth(formula = y ~ x, data = filter(mpg, class == "subcompact"), se = FALSE)
