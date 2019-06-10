#LIBRARY IMPORT

library(tidyverse)  
library(cluster)    
library(factoextra) 
library(dendextend) 

#DATA

df <- USArrests

#SCALE DF

df <- scale(df)

head(df)

#EUCLIDEAN DISTANCE

d <- dist(df, method = "euclidean")



# Hierarchical CLUSTURING

HCL1 <- hclust(d, method = "complete" )



# PLOTING

plot(HCL1, cex = 0.6, hang = -1)



# COMPUTE AGNES
HCL2 <- agnes(df, method = "complete")



# Agglomerative coefficient

HCL2$ac

