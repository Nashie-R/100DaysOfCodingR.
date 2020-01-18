---
title: "Day 4".
author: "Nashipae Waweru".
date: "13/01/2020".
segment: "Question Part".
---

#Loading the libraries.

library(tidyverse)
library(knitr)

#Write a program to create a vector which contains 10 random integer values between -50 and +50.

v <- c(-22, -15, 9, 17, 49, 5, -32, 44, 1, -9)
typeof(v)
v

---
segment: "ScatterPlots".
---

#LOAD PACKAGES.
library(datasets)
library(pacman

pacman::p_load(tidyverse, tidyr, GGally, dplyr, ggthemes)

#USE MTCARS DATA SET[MOTOR TRENDS CAR ROAD TESTS].
?mtcars

#BASIC INFO ABOUT OUR DATA.
head(mtcars)
tail(mtcars)
summary(mtcars)

#GENERAL PLOTS.
#When checking the association between two variables is best checked when you first understand the variables separetely then comapre.
#Let's use the hist()

hist(mtcars$wt)
hist(mtcars$mpg)

#Let's use a basic x-y plot for our two quantitative variables ie. weight and mpg
plot(mtcars$wt, mtcars$mpg)

#Addding some options
plot(mtcars$wt, mtcars$mpg,
     pch = 19, #Makes the scatter plot to made up of solid circles,
     cex = 1.5, #Generally increases the size,
     col = "#FF3399",
     main = "MPG as a Function of Weight in cars",
     xlab ="Weight",
     ylab = "MPG of Cars")

#So basically to get a scatter plot that shows the association just use the basic plot function.

#Remember to detach the base packages.
detach("package:datasets", unload = TRUE)

#For the contributed classes.
pacman::p_unload(all)









