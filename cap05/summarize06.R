delays <- not_cancelled %>%
    group_by(tailnum) %>% 
    summarize(
        delay = mean(arr_delay)
    )

ggplot(data = delays, mapping = aes(x = delay)) +
    geom_freqpoly(binwidth = 10)