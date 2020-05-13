#######
# Author: Nashipae Waweru
# Date: 11/04/2020
# Title: Dealing with missing data
#######

eg.na <- c(NA, (1:10))
mean(eg.na) # The result whenever the is a missing value in a dataset is NA
eg.na

# An argument that actually does exclude the missing data from the operation
mean(eg.na, na.rm = TRUE)

# How to check if you have a missing value
# is.na function - returns boolean values

is.na(starwars)
any(is.na(starwars)) # Returns a single value 

any(is.na(starwars$name))
any(is.na(starwars[ , c("name", "homeworld", "species")]))

# Remove the any function to figure out the specifics

is.na(starwars[ , c("name", "homeworld", "species")])

# Let's replace the missing data with more meaningful data

my.wars$species[is.na(my.wars$species)] <- "Unknown"
any(is.na(my.wars$species))

subset(my.wars, species == "Unknown")

?subset()

# When dealing with numerical data we coukd alternatively replace the missing values with:
# Mean
# Median

my.wars$height[is.na(my.wars$height)] <- median(my.wars$height, na.rm = TRUE)
my.wars$height


#### EXERCISE ####

## Using the employee_data_na.CSV file, please answer the following questions:

my.exercise <- read.csv("employee_data_na.csv", stringsAsFactors = FALSE)
view(my.exercise)
  
## 1. Are there NA values in the data at all?

any(is.na(my.exercise))   # Returned TRUE thus meaning there are missing values in the data

## 2. Find out in which columns the NA values are?

any(is.na(my.exercise$emp_no)) # No missing values
any(is.na(my.exercise$first_name)) # No missing values
any(is.na(my.exercise$last_name)) # No missing values
any(is.na(my.exercise$birth_date)) # No missing values
any(is.na(my.exercise$gender)) # Prescence of missing values
any(is.na(my.exercise$title)) # No missing values
any(is.na(my.exercise$salary)) # Prescence of missing values
any(is.na(my.exercise$latest_start_date)) # No missing values
any(is.na(my.exercise$end_of_contract_date)) # No missing values
 
# Only in salary and gender columns

## 3. Use the sum() function to find out how many missing values there are in total?

sum(is.na(my.exercise))

## 4. How about by variable?

sum(is.na(my.exercise$salary))
sum(is.na(my.exercise$gender))

## 5. Edit the observations 

my.exercise$gender[is.na(my.exercise$gender)] <- "Unknown"
any(is.na(my.exercise$gender))
my.exercise$salary[is.na(my.exercise$salary)] <- mean(my.exercise$salary, na.rm = TRUE)
any(is.na(my.exercise$salary))

## 6. Reload the data and delete the rows with missing values using the na.omit() function

my.exercise <- na.omit(my.exercise)
any(is.na(my.exercise))

