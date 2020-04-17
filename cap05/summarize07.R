delays <- not_cancelled %>% 
    group_by(tailnum) %>% 
    summarize(
        delay = mean(arr_delay, na.rm = TRUE),
        n = n()
    )

ggplot(data = delays, mapping = aes(n, delay)) +
    geom_point(alpha = 1/10)