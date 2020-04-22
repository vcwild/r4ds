people <- tribble(
    ~name,             ~names,  ~values,
    #-----------------|--------|------
    "Phillip Woods",   "age",       45,
    "Phillip Woods",   "height",   186,
    "Phillip Woods",   "age",       50,
    "Jessica Cordero", "age",       37,
    "Jessica Cordero", "height",   156
)

# Use spread to check if there is duplicate row keys

spread(people, names, values)

tidypeople <- people %>%
    group_by(name, names) %>% 
    mutate(sub_id = row_number()) %>% 
    pivot_wider(names_from = names, values_from = values) %>% 
    select(name, age, height)