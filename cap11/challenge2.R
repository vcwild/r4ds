challenge2 <- read_csv(
    readr_example("challenge.csv"),
    col_types = cols(.default = col_character())
)

challenge2 %>%
    mutate_at(vars(x), as.double) %>%
    mutate_at(vars(y), as.Date) %>%
    write_csv("challenge2.csv") %>% 
    write_rds("challenge2.rds")