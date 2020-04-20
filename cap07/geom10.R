ggplot(diamonds, aes(x = carat)) + 
    geom_density(aes(x = carat, color = cut))
