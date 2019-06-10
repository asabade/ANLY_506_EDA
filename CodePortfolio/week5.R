#LIBRARY IMPORT

library(tidyverse)

#READ CSV

heights <- read_csv("C:/Users/aks23/Documents/Harrisburg University/Anly 506/heights.csv")

#INLINE READ

read_csv("a,b,c\n4,5,6", col_names = c("Col 1", "Col 2", "Col 3"))



# Defining na values 

read_csv("a,b,c\n4,5,.", na = ".")

#PARSING VECTOR

str(parse_logical(c("TRUE", "FALSE", "NA")))

#PARSING . FOR EMPTY

parse_integer(c("1", "231", ".", "456"), na = ".")

#PARSING NUMBERS

parse_number("$5000")

# PARSING

fruit <- c("apple", "banana")

parse_factor(c("apple", "banana"), levels = fruit)


parse_date("2011-01-19")


guess_parser("2012-12-11")


guess_parser("15:01")


#READ_CSV

TEMP <- read_csv(
  
  readr_example("TEMP.csv"), 
  
  col_types = cols(
    
    x = col_integer(),
    
    y = col_character()
    
  )

  
#WRITE CSV
  
  write_csv(challenge, "TEMP.csv")
  
