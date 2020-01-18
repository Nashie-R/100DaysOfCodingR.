===
title: "Day 8"
author: "Nashipae Waweru"
date: "18/JAN/2020"
segment: "BasicStatistics"
===
  
#DESCRIBE()###
#This comes from psych package and gives n, mean, sd, median, 10% trimmed mean, min/max, range, skewness, kurtosis and tandard errors.
#Pictures first numbers later.
  
#INSTALL PACKAGE PSYCH
install.packages("psych")

#LOAD PACKAGES.

#base
library(datasets)

#contributed
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr, tidyverse)

#PSYCH PACKAGE####

#Load psych package###
p_load(psych)

#Get info on package.
p_help(psych) #Opens package PDF
p_help(psych, web = FALSE)  #Opens package in RViewer

#DESCRIBE()######
#Using Iris Data

#For quantitative variables only
describe(iris$Sepal.Length)
describe(iris)