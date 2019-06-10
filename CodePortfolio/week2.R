#IMPORT LIBRARIES

library(readr)


#LOAD DATA

US_EPA_data_2017 <- read_csv("Documents/Harrisburg University/Anly 506/US EPA data 2017.csv")

View(US_EPA_data_2017)

#NUMBER OF ROWS AND COLUMNS 

nrow(US_EPA_data_2017)

ncol(US_EPA_data_2017)

#SUMMERY OF DATA

str(US_EPA_data_2017)

#TOP 10 ROWS

head(US_EPA_data_2017, 10)

#BOTTOM 10 ROWS

tail(US_EPA_data_2017, 10)