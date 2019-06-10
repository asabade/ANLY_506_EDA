#IMPORT LIBRARY

library(tidyverse)

#NEW VARIABLE

table1 %>% mutate(rate = cases / population * 10000)

#COMPUTE CASES

table1 count(year, wt = cases)

#VIASUALIZA

library(ggplot2)

ggplot(table1, aes(year, cases)) + 
  
  geom_line(aes(group = country), colour = "grey50") + 
  
  geom_point(aes(colour = country))



# Gathering columns into a new pair of variables

table4a %>% 
  
  gather(`1999`, `2000`, key = "year", value = "cases")





table4b %>% 
  
  gather(`1999`, `2000`, key = "year", value = "population")


table3 %>% 
  
  separate(rate, into = c("cases", "population"), sep = "/")


table3 %>% 
  
  separate(year, into = c("century", "year"), sep = 2)


table5 %>% 
  
  unite(new, century, year)

# create a new data

stocks <- tibble(
  
  year   = c(2015, 2015, 2015, 2015, 2016, 2016, 2016),
  
  qtr    = c(   1,    2,    3,    4,    2,    3,    4),
  
  return = c(1.88, 0.59, 0.35,   NA, 0.92, 0.17, 2.66)
  
)

stocks %>% 
  
  spread(year, return)

#MISSING VALUE

stocks %>% 
  
  spread(year, return) %>% 
  
  gather(year, return, `2015`:`2016`, na.rm = TRUE)
