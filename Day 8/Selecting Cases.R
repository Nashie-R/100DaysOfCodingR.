===
title: "Day 8"
author: "Nashipae Waweru"
date: "18/JAN/2020"
segment: "BasicStatistics"
===
  
#SELECTING CASES####

#LOAD PACKAGES###
library(datasets)

#LOAD DATA#####
head(iris)
tail(iris)

#ALL DATA####

hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)
summary(iris)

#SELECT BY CATEGORY

#Versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

#Setosa
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length: Setosa")

#Virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Viginica")

#SELECT BY VALUE.

#Short petals only; Setosa
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

#MULTIPLE SELECTORS###

#Short Virginica petals.
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Petal.Lenght : Short Virginics")


#CREATE SUBSAMPLE###
#If you'll be using the selection frequently, you might as well as create a sub sample data frame
# Format: data_name <- data[rows,columns]
#Leave rowws or ccoumns blank to seleect all

a.setosa <- iris[iris$Species == "setosa",]

#Explore a.setosa
view(a.setosa)
summary(a.setosa)
head(a.setosa)
tail(a.setosa)
