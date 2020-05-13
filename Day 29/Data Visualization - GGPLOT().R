#######
# Author: Nashipae Waweru
# Date: 14/04/2020
# Title: Data Visualization
#######

#### Introduction to ggplot2 package ####

# Loading the package

library(tidyverse)

# Loading our data

hdi <- read.csv(file.choose(), stringsAsFactors = FALSE)
hdi <- as.tibble(hdi)
view(hdi)

# Creating a scatter plot use the function: ggplot()

sc <- ggplot(hdi)

# Doesn't bring an output because the following layers are madatory for data visualization
# 1. Data
# 2. Aesthetics
# 3. Geometry

# For aesthetics

sc <- ggplot(hdi, aes(CPI.2015, HDI.2015))
sc

# Now let's incoporate the Geometry

sc + geom_point()

# Now since we have an image we can build up on it using the other optional layers:
# 4. Facets
# 5. Statistics
# 6. Co-ordinates
# 7. Themes

# For facets, split our data into ssub-plots

sc + geom_point() + facet_grid(Region ~.)

# Statistics

sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region ~.) + 
  stat_smooth()

# Co-ordinates
sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region ~.) + 
  stat_smooth() + coord_cartesian(xlim = c(0.75, 1))

# Theme
sc + geom_point(aes(color = Region), size = 3) + 
  stat_smooth() + theme_minimal()

