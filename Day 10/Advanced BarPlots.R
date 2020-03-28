#===
#title: "Day 10".
#author: "Nashipae Waweru".
#date: "5/02/2020".
#segment: "Re-cap".
#===

#Loading packages.
library(datasets)    #This is a built-in package.
require(pacman)

#Loading contributed  packages.
pacman::p_load(rio, stringr, dplyr,GGthemes, ggplot2,
               rmarkdown, shiny, tidyr, tidyverse, 
               ggvis, lubridate, httr, )

#Basic summaries of Iris data
head(iris)
tail(iris)
summary(iris)
View(iris)

#Basic functions in R used to explore data
plot(iris)
plot(iris$Sepal.Length)
plot(iris$Sepal.Width)
plot(iris$Species)

#plotting with options.
plot(iris$Species,
     col = "#00FF00",
     main = "A plot of Different Iris Species",
     xlab = "The Iris Species",
     ylab = "The number of the Species")
     
#Other plotting options.
plot(cos, 0, 2*pi)

#The same plot with modifications.
plot(cos, 0, 2*pi,
     col = "#00FF00",
     lwd = 4,
     main = "A cosine graph from 0 to 2*pi",
     xlab = "The y value",
     ylab = "Cos")

#hist of iris as a data set doesn't work simply because 
#x is not quantitative but numerical.
hist(iris$Sepal.Length)
hist(iris$Petal.Length [iris$Species == "setosa"],
     xlim = c(1,2),
     breaks = 6,
     main = "Histogram of Petal Width of Setosa species",
     xlab = "Various groups",
     col = "purple")

#Basic bar plots.
?barplot

#Since height must be a vector or matrix therefore,
#Let's assign it.

data2 <- table(iris$Species)
barplot(data2,
        space = 1,
        col = "cyan",
        main = "A Bar Plot",
        sub = "Various Iris Species",
        xlab = "Iris")

#Load psych package.
p_load(psych)

describe(iris)
describe(mtcars)
describe(mtcars$cyl)
