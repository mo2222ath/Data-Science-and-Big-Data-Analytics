library(plyr)
library(ggplot2)
library(cluster)
library(lattice)
library(graphics)
library(grid)
library(gridExtra)

df_usarrests <- as.data.frame(USArrests)


wss <- numeric(15)

for (k in 1:15) wss[k] <- sum(kmeans(df_usarrests, centers=k, nstart=25)$withinss)

plot(1:15, wss, type="b", xlab="Number of Clusters", ylab="Within Sum of Squares")

print("From plot the optimal (k) is 3 and also maybe 4")
