---
title: "Day 3"
author: "Nashipae Waweru"
date: "13/01/2020"
---
  
  #HISTOGRAMS#####

library(datasets)

#SUMMARY OF OUR DATA:IRIS####
head(iris)
tail(iris)
summary(iris)

?iris

#BASIC HISTOGRAMS####3
#Use the hist() command
hist(iris$Sepal.Length)  #Outputs a basic histogram which is ok for explaratory data but not presentation
hist(iris$Sepal.Width)   #Outputs a bell curve
hist(iris$Petal.Length)   #Gaps
hist(iris$Petal.Width)

#HISTOGRAM BY GROUPS####
par(mfrow = c(3,1))

#Histogram for each species using options#####
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width for Setosa",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "green")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Virginica",
     col = "red")

#Restore graphical parameter###3
par(c(1,1))

par(mfrow = c(1,1))

#That does it for univariate distributions ie, bar charts and histograms