#######
# Author: Nashipae Waweru.
# Date: 17/04/2020.
# Title: Scatter Plots.
#######

# A scatter plot is a visual representation of the relationship between two numerical variables.

# Loading packages

library(tidyverse)

# Loading the data.

hdi <- read.csv(file.choose(), stringsAsFactors = FALSE)
hdi <- as.tibble(hdi)
View(hdi)

# Let's create a scatter plot that compares the cpi and hdi

sp <- ggplot(hdi, aes(CPI.2015, HDI.2015))
sp + geom_point(aes(color = Region), shape = 21, stroke = 2) + theme_light() +
  labs(title = "Corruption and Human Development",
       x = "Corruption Perception Index, 2015", 
       y = "Human Development Index, 2015") +
  stat_density2d()

# The stat_density2d() is a function that is commonly in overcrowded plots. 