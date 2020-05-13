#######
# Author: Nashipae Waweru.
# Date: 16/04/2020
# Title: BarCharts.
#######

# Loading the necessary package.

library(tidyverse)

#Load the Titanic data

titanic <- read.csv(file.choose(), stringsAsFactors = FALSE)
view(titanic)

titanic <- as.tibble(titanic)

# Let's set some of the variables to be factors.

titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)

# Let's construct a bar chart ~

bar <- ggplot(data = titanic, aes(x = Survived))
bar + geom_bar(color = "blue", fill = "pink", alpha = 0.6) +
  theme_economist() + ggtitle("Survival Rate on the Titanic") +
  labs(x = "Survived Persons", y = "Passenger Count")

# Now we can use aesthetics to map variables onto other variables
# Now, aesthetics is the general feel of our data like color and all 

bar <- ggplot(titanic, aes(x = Survived, fill = Sex))
bar + geom_bar() +
  theme_light() + ggtitle("Survival Rate on the Titanic") +
  labs(x = "Survived Persons", y = "Passenger Count")

# Now to make the chart more readable, let's see the survival rate by gender

bar <- ggplot(titanic, aes(x = Sex, fill = Survived))
bar + geom_bar() + theme_light() +
  ggtitle("Survival Rate on the Titanic by Gender") +
  labs(x = "Gender", y = "Passenger Count")

# Now let's see the survival rate in terms of class

bar <- ggplot(titanic, aes(x = Sex, fill = Survived))
bar + geom_bar() +
  theme_light() + ggtitle("Survival Rate on the Titanic") +
  labs(x = "Survived Persons", y = "Passenger Count") +
  facet_wrap(Sex ~ Pclass)
  


#### EXERCISE ####

# Create a bar chart representation of the number of employees in the different positions in the employees data by gender.

# Set the theme to fivethirtyeight.

# Add plot title "Job positions by gender", and axes titles: "Job position", and "Employee count". Can you do that?

# Loading the data

emp <- read.csv(file.choose(), stringsAsFactors = FALSE)
emp <- as.tibble(emp)
View(emp)

bar.emp <- ggplot(emp, aes(x = title, fill = gender))
bar.emp + geom_bar() + theme_fivethirtyeight() +
  labs(title = "Job Positions by Gender",
       x = "Job Position",
       y = "Employee Count")

# Try setting the theme to something different and give it another go.

# Loading the data

bar.emp <- ggplot(emp, aes(x = title, fill = gender))
bar.emp + geom_bar() + theme_light() +
  labs(title = "Job Positions by Gender",
       x = "Job Position",
       y = "Employee Count") +
  scale_fill_manual(values = c("black", "red")) +
  theme(legend.position = "bottom")

# Look up the scale_fill_manual() and scale_color_manual() functions. Try setting custom colors to your plot.

?scale_fill_manual()
?theme()

# Try to change the position on the canvas the legend is in. Use the theme() function to do that.

# Try to reverse the aesthetic mappings. Does this graph give you a better idea of your data? Is it easier to read? (Shouldn't be ????)
# The initialset-up is easier to understand and make conclusions and the like.