#######
# Author: Nashipae Waweru.
# Date: 17/04/2020.
# Title: Box and Whiskers Plot.
#######

#### Commomnly referred to as: Box Plot ####

# Loading the package

library(tidyverse)

# Loading the data

titanic <- read.csv(file.choose(), stringsAsFactors = FALSE)
titanic <- as.tibble(titanic)

titanic$Survived <- as.factor(titanic$Survived)
View(titanic)

# Let's make a box plot!!!

box <- ggplot(titanic, aes(x = Survived, y = Age))
box + geom_boxplot() + theme_light() +
  labs(title = "Survival Rate in the Titanic Based on Age")

# Since this specific data visualizer seems tiresome to interpret we could add several more functions to help

box <- ggplot(titanic, aes(x = Survived, y = Age))
box + geom_boxplot(outlier.fill = "grey", outlier.shape = 5) +
  geom_jitter(width = 0.2, aes(color = Sex)) +
  theme_light() +
  labs(title = "Survival Rate in the Titanic Based on Age") +
  coord_flip()



#### # Using the filtered data from Exercise 21, create a box plot showing the salary distribution according to position.


# Set outlier identifiers.

# Add a layer that overlays data points on each position box and have them be colored according to gender.

# Set a title "Salary distribution" and a subtitle "based on position and gender".

# Set the axis labels.

# Add a theme. 

# P.S. To make the title labels fit on the canvas, set the following argument in the theme layer:

axis.text.x = element_text(angle = 90, hjust = 1)

# This rotates the labels at 90 degrees, and adjusts their horizontal justification.

# Use the appropriate canvas orientation.

# Finally, think about coloring your graph. Is there an easier way to get tasteful combinations of colors than doing it manually? Yes, there is.

# Lookup the wesanderson package. Lookup the RColorBrewer package. Lookup the scale_color_manual() function, and the scale_color_brewer() function. Set a palette for your graph to make it look great. 

library(ggthemes)
library(wesanderson)

emp.histo <- read.csv(file.choose(), stringsAsFactors = FALSE)
emp.histo <- as.tibble(emp.histo)
view(emp.histo)

summary(emp.histo)

emp.select <- emp.histo %>% filter(salary > 45000)
emp.select

emp.select$title <- as.factor(emp.select$title)

box.emp <- ggplot(emp.select, aes(x = title, y = salary))
box.emp + geom_boxplot(outlier.shape = 3, outlier.fill = "grey") + geom_jitter(width = 0.3, aes(color = gender)) +
  theme_classic(base_size = 10) +
  labs(x = "Job Positions",
       y = "Salary Distribution") +
  ggtitle("Salary Distribution", subtitle = "(based on gender and position)") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1), plot.title = element_text(face = "bold")) 
   # scale_color_brewer(palette = 5)
  
??wesanderson

install.packages("wesanderson")
install.packages("RColorBrewer")

