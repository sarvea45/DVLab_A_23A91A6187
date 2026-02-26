# DV Lab – Week 06A
# Name:K.Sarveswara Rao
# Roll No:23A91A6187
#Load and Understand the DataSet
data(diamonds)
data(package=.packages(all.available = TRUE))
library(ggplot2)
data("diamonds")
str(diamonds)
dim(diamonds)
?diamonds

#Very basic Scatter'

plot(diamonds$carat,diamonds$price)

#improved Scatter
plot(diamonds$carat,diamonds$price,col=rgb(0,0,1,0.1),pch=16,)
