#

library(nycflights13)

library(tidyverse)

#FLIGHTS DATA

flights

View(flights)

#OBSERVATIONS


feb1 <- filter(flights, month == 2, day == 1)

filter(flights, month == 10 | month == 9)

filter(flights, arr_delay <= 100, dep_delay <= 100)



arrange(flights, desc(dep_delay))


select(flights, year, month, day)

flights_sml <- select(flights, 

                      year:day, 

                      ends_with("delay"), 

                      distance, 

                      air_time

)

mutate(flights_sml,

       gain = dep_delay - arr_delay,

       speed = distance / air_time * 60

)


by_day <- group_by(flights, year, month, day)


summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))
