table3 %>% 
    separate(rate, into = c("cases", "population"), sep = "/", convert = TRUE)
