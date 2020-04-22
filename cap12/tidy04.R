preg <- tribble(
    ~pregnant, ~male, ~female,
    "yes",     NA,    10,
    "no",      20,    12
)

# gender,     count,  pregnant
# male        20      NA
# female      22      10

preg_tidy <- preg %>% 
    gather(male, female, key = "sex", value = "count", na.rm = TRUE)
