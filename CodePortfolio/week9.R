#IMPORT LIBRARIES
library(tidyverse)

#BARS

ggplot(data = diamonds) +

  geom_bar(mapping = aes(x = cut))

#NUMBER OF OBSERVATIONS
diamonds %>% count(cut)

#HISTOGRAM

ggplot(data = diamonds) +

  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

#FILTER
smaller <- diamonds %>% 

  filter(carat < 3)

#HISTOGRAMS LINES
ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +

  geom_freqpoly(binwidth = 0.1)

#BINWIDTH
ggplot(diamonds) + 

  geom_histogram(mapping = aes(x = y), binwidth = 0.5)

ggplot(data = faithful, mapping = aes(x = eruptions)) + 

  geom_histogram(binwidth = 0.25)

#NEW VARIABLE
nycflights13::flights %>% 

  mutate(

    cancelled = is.na(dep_time),

    ed_hour = sched_dep_time %/% 100,

    sched_min = sched_dep_time %% 100,

    sched_dep_time = sched_hour + sched_min / 60

  ) %>% 

#SHOWING NEW VARIABLE
ggplot(mapping = aes(sched_dep_time)) + 

  geom_freqpoly(mapping = aes(colour = cancelled), binwidth = 1/4)

# 

ggplot(data = mpg) +

  geom_boxplot(mapping = aes(x = reorder(class, hwy, FUN = median), y = hwy))



diamonds %>% 

  count(color, cut)



# use a model to remove the very strong relationship between price and carat so we can explore the subtleties that remain

library(modelr)

mod <- lm(log(price) ~ log(carat), data = diamonds)



diamonds2 <- diamonds %>% 

  add_residuals(mod) %>% 

  mutate(resid = exp(resid))



ggplot(data = diamonds2) + 

  geom_point(mapping = aes(x = carat, y = resid))
