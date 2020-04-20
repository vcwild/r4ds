library(modelr)

mod <- lm(log(price) ~ log(carat), data = diamonds)

diamonds2 <- diamonds %>% 
    add_residuals(mod) %>% 
    mutate(resid = exp(resid))

ggplot(diamonds2) +
    geom_point(aes(x = carat, y = resid))