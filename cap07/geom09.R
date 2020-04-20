library(nycflights13)
 flights %>% 
     mutate(
         cancelled = is.na(dep_time),
         sched_hour = sched_dep_time %/% 100,
         sched_min = sched_dep_time %% 100,
         sched_dep_time = sched_hour + sched_min / 60
     ) %>% 
     ggplot(mapping = aes(x = sched_dep_time, y = ..density..)) +
     geom_freqpoly(mapping = aes(color = cancelled), binwidth = 1/4)
 