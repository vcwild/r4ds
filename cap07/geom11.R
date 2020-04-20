library(ggstance)

# no ggstance -------------------------------------------------------------

ggplot(diamonds, aes(x = cut, y = carat)) +
    geom_boxplot() + 
    coord_flip()

# using ggstance ----------------------------------------------------------

ggplot(diamonds, aes(x = carat, y = cut)) +
    geom_boxploth()
