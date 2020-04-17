transmute(
    flights,
    dep_min = (dep_time %/% 100) * 60 + dep_time %% 100,
    sched_dep_min = (sched_dep_time %/% 100) * 60 + sched_dep_time %% 100,
)