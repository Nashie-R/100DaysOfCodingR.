#######
# Author: Nashipae Waweru
# Date: 15/04/2020
# Title: Histogram.
#######

#Loading the required package

library(tidyverse)

# Importing our data

titanic <- read.csv(file.choose(), stringsAsFactors = FALSE)
titanic <- as.tibble(titanic)
view(titanic)

# Converting several of the variables into factors

titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)
titanic

# Plotting a histogram
# Remember to include the data, aesthetic and geometry

hist <- ggplot(data = titanic, aes(x = Age))
hist + geom_histogram(binwidth = 5, color = "darkslategrey", 
                      fill = "purple", alpha = 0.5) + # Binwidth is basically the interval etween values
                      ggtitle("Age Distribution on the Titanic") +
                      labs(y = "Number of Passengers", x = "Age" ) + 
      theme_minimal()

#### EXERCISE ####

# Using the employees data,  plot the salary frequencies. Limit the salaries under consideration to only those above 45,000 per year.

# Choose an appropriate binwidth, and appearance.

# Title the x axis as "Salary", and the y axis as "Number of employees in the salary bracket".

# Title the plot as "Title distribution in the employee data".

# Install the ggthemes package and chose a theme from there. Look at the descriptions of each and choose one that has modifiable size and font family. Increase the size and set the font family to serif.

# Solution

library(ggthemes)

emp.histo <- read.csv(file.choose(), stringsAsFactors = FALSE)
emp.histo <- as.tibble(emp.histo)
view(emp.histo)

summary(emp.histo)

emp.select <- emp.histo %>% filter(salary > 45000)
emp.select

histo <- ggplot(data = emp.select, aes(x = salary))
histo + geom_histogram(binwidth = 10000, color = "black", fill = "green", alpha = 0.3) +
  ggtitle("Salary distribution in the Employee data") + 
  labs(x = "Salary", y = "Number of employees in the salary bracket") +
  theme_dark(base_size = 12, base_family = "serif")


# Let's facet our histogram a little bit.
# Using the Titanic data, let's find out how many people actually survived by age

hist1 <- ggplot(titanic, aes(x = Age, fill = Survived))
hist1 + geom_histogram(banwidth = 5, color = "black", alpha = 0.6) + theme_light() + 
  labs(x = "Age of Passangers",
       title = "Survival Rate of Passengers by Age")
