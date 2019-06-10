#CURRENT WORKING DIR

getwd()

# see your current working directory

setwd(dir = "C:/Users/aks23/Documents/Harrisburg University/Anly 506")




#PRINT ALL THE OBJECTS IN MY WORKSPACE

ls()

#CREATE SOME OBJECTS

study1.df <- data.frame(id = 1:5, 
                        
                        sex = c("m", "m", "f", "f", "m"), 
                        
                        score = c(51, 20, 67, 52, 42))



score.by.sex <- aggregate(score ~ sex, 
                          
                          FUN = mean, 
                          
                          data = study1.df)



study1.htest <- t.test(score ~ sex, 
                       
                       data = study1.df)

save(study1.df, score.by.sex, study1.htest,
     
     file = "data/study1.RData")

#SAVING ALL OBJECTS 


write.table(x = pirates,
            
            file = "TEXTS.txt",  
            sep = "\t")          



#WRITING TAB DELIMITED
write.table(x = TEXTS,
            
            file = "C:/Users/aks23/Documents/Harrisburg University/Anly 506/TEXTS.txt",
            
            sep = "\t")


#STORING AS MYDATA


mydata <- read.table(file = 'TEXTS.txt', sep = '\t', header = TRUE, stringsAsFactors = FALSE)

#READ FROM MY WEB


fromweb <- read.table(file = 'http://goo.gl/jTNf6P', sep = '\t', header = TRUE)


# READ TABLE
read.table().

