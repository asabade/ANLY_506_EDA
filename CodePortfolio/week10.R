#LIBRARY IMPORT

#DATA SIMULATION

set.seed(1234)

x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)

y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)

plot(x, y, col = "blue", pch = 19, cex = 2)

text(x + 0.05, y + 0.05, labels = as.character(1:12))

#DATAFRAME CREATION

dataFrame <- data.frame(x, y)

#K-MEANS WITH 3 CLUSTURES

kmeans <- kmeans(dataFrame, centers = 3)

#RESULTS

names(kmeans)

kmeans$cluster

#EXAMPLE1

set.seed(1234)

dataMatrix <- as.matrix(dataFrame)[sample(1:12), ]

kmeans <- kmeans(dataMatrix, centers = 3)

par(mfrow = c(1, 2))
