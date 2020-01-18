- --
title : "Day 6".
author: "Nashipae Waweru".
segement: "Question part".
---

#Write an R program to call the built in dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the dataframe.

#Loading the base packages.
library(datasets)
library(pacman)

#Loading contributed packages.
pacman:: p_load(ggthemes, tidyverse, tidyr, knitr, dplyr, GGally)

#Explore the dataset.
head(airquality)
tail(airquality)
summary(airquality)
view(airquality)

#Dropping the columns Solar.R and Wind in airquality.
mydata <- select(airquality, -c(Solar.R, Wind))
view(mydata)

#Write a R program to create the syste