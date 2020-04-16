(filter(flights, !(arr_delay > 120 | dep_delay > 120)))

(filter(flights, !arr_delay > 120 & !dep_delay > 120))