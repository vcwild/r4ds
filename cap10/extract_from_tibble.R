df <- tibble(
    x = runif(5),
    y = rnorm(5)
)


df

# Extract by name
df %>% 
    .$x

# Extract by position
df %>% 
    .[[1]]