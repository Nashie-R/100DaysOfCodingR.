#######
# Author: Nashipae Waweru
# Date: 13/04/2020
# Title: Using the Pipe Operator
#######

# The pipe operator: %>%
# Placed in between operations to both separate and unite them

star.species <- group_by(star, species)
star.smr <- summarize(star.species, count = n(), avrg.mass = mean(mass, na.rm = T))
filter(star.smr, count>1)

# The above code is redundant so we try and find easier ways
# So, alternatively

# Nest the operations

filter(summarize(group_by(star, species), count = n(), 
          avrg.mass = mean(mass, na.rm = T)), count > 1)

# The above is still cumbersome
# So, to just reduce the work completely let's use the pipe operator

data %>% operation A %>% operation B

star.example <- star %>% 
  group_by(species) %>%
  summarize(count = n(), avrg.mass = mean(mass, na.rm = T)) %>%
  filter(count > 1)
star.example

#### EXERCISE ####

# Requirements: the employees data from Exercise 17.

# Load the employees data and convert it into a tibble. Then, make the gender and title variables into a factor.

emp <- read.csv("employee_data_na.csv", stringsAsFactors = F)
str(emp)

# Hint: the commands are analogous to the as.data.frame() function.

emp <- as.tibble(emp)

emp$gender <- as.factor(emp$gender)
emp$title <- as.factor(emp$gender)
str(emp)

# Check if the data has any missing values.

any(is.na(emp)) # There are missing values

# Arrange the dataset by gender, then last name, and make first_name, last_name, and gender the first three variables in the data frame. Show only the employees whose salary is higher than 70,000.

# Use the ends_with() function with select.

emp.a <- emp %>%
           select(ends_with("name"), gender, everything() ) %>%
           filter(salary >= 70000) %>%
           arrange(gender, last_name)
view(emp.a)  

# Create a data frame containing only the employee numbers of those earning more than 70,000.

good.earners <- emp.a["emp_no"]
good.earners
  
# Find out how much each position (title) earns on average by gender; create a new variable that represents the average monthly figures and arrange your result by gender and average monthly salary, from largest to smallest.

emp.salary <- emp %>%
  group_by(title, gender) %>%
  summarize(avrg.salary = mean(salary, na.rm = T)) %>%
  mutate(monthly.salary = avrg.salary/12) %>%
  arrange(gender, desc(monthly.salary))
emp.salary5432V 
