---
title: "Day 2."
author: "Nashipae Waweru"
date: "11/JAN/2020"
segment: "Bar Charts"
---

#BAR CHARTS#############################

#Loading the packages########
library(datasets)      #loading the base packages.

pacman::p_load(pacman,tidyverse,GGally,ggthemes)       #loading the contributed packages.

#Summarizing our dataframe.
?mtcars
head(mtcars)
tail(mtcars)
summary(mtcars)
View(mtcars)

#The actual bar charts use the keyword barplot()########
barplot(mtcars$cyl)    #Doesn't work because the bar graph isnt elaborate enough

#To create a really elaborate barchart you can't use raw data you therefore have to create a frequency table ie.
cylinder <- table(mtcars$cyl)  #Create table
View(cylinder)
barplot(cylinder)    #Bar Chart
plot(cylinder)       #Default x-y plot(lines)

#Simple is good