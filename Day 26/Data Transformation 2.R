#######
# Author: Nashipae Waweru
# Date: 12/04/2020
# Title: Data Transformation 2
#######

#### Arrange() ####

arrange(star, mass)
arrange(star, desc(mass), height)

#### Grouping and Summarizing ####

## Summarize()
# Collapses data into a single row by aggregateing the result of a function

summarize(star, avg.height = mean(height, na.rm = T))

## Group_by()
# Splits data set into groups

star.species <- group_by(star, species)
summarize(star.species, avg.height = mean(height, na.rm = T))
