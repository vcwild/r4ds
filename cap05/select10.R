library(dplyr)
library(nycflights13)

flights_sml <- select(
    flights, 
    year:day, 
    ends_with("delay"), 
    distance, 
    
     

    

    