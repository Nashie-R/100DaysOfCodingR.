#######
# Author: Nashipae Waweru
# Date: 10/04/2020
# Title: Getting a sense of my data
#######


# We use functions like:
# nrow(...)
# ncol(...)
# colnames(...)
# rownames(...)
# str(...)
# summary(...)

# Calling the pokemon data

my.pok

nrow(my.pok)
ncol(my.pok)

colnames(my.pok)
rownames(my.pok)

str(my.pok)
summary(my.pok)

view(my.pok)


##### SUBSETTING DATA FRAMES #####

library(tidyverse)

starwars

my.wars <- as.data.frame(starwars)
typeof(my.wars)

my.wars <- my.wars[, -(11:13)] 
my.wars

head(my.wars)
tail(my.wars)

# Indexing a specific element

my.wars[3, 9]
my.wars[3, "homeworld"]

# Indexing an entire row or column

my.wars[5,]

my.wars[ , "name"] #returns a matrix
my.wars[["name"]] # returns a vector


# Using $ sign

head(my.wars$name) # returns a vector

# Referencing a data frame but still getting a dataframe

head(my.wars["name"])
head(my.wars)

# To index a couple of data use concatination

my.wars[c(1:10), c("name", "height", "mass")] # returns a data frame too


###### EXTENDING A DATA  FRAME ######

# Adding a variable

my.data

mark <- c(17.5, 34.75, 34.25, 0, 0, 0.75, 0)
carrie <- c(13.5, 22.75, 21.25, 0, 0, 0.5, 5.75)

my.data$MarkScreenTime <- mark
my.data$CarrieScreentime <- carrie

my.data 

# Alternatively,
# First, remove the already inputed variables ie. columns
my.data$MarkScreenTime <- NULL
my.data$CarrieScreentime <- NULL


# Using square brackets
my.data[["MarkScreenTime"]] <- mark
my.data[["CarrieScreenTime"]] <- carrie
my.data

# Alternative 2
# Using the cbind(...) function

my.data$MarkScreenTime <- NULL
my.data$CarrieScreenTime <- NULL
my.data

my.data <- cbind(my.data, MarkScreenTime = mark, CarrieScreentime = carrie )
my.data

my.data$`MarkScreenTime <- mark`<- NULL
my.data$`CarrieScreentime <- carrie` <- NULL
my.data$MarkScrrenTime <- NULL
my.data$CarrieScreentime <- NULL
my.data

# Adding row 
# Create a small one-line data frame

rogueOne <- data.frame(Title = "Rogue One", Year = 2016,
                       Length = 133, Gross = 1051,
                       MarkScreenTime = 0,
                       CarrieScreentime = 0.25)
rbind(my.data, rogueOne)



#### EXERCISE ####

# Requirements: the pets data frame from Exercise 16.

my.dog 

# 1. Add the "Vaccinated" variable to the pets data frame, so it looks like this:

#        Months.old        Size Weight Breed Vaccinated
#Flipper         53      medium     21   cat        Yes
#Bromley         19       small      8   cat        Yes
#Nox             34      medium      4   dog         No
#Orion           41       large      6   dog        Yes
#Dagger          84       small      7   cat         No
#Zizi           140 extra small      2   dog         No
#Carrie         109       large     36   cat        Yes

vaccinated <- c("Yes", "Yes", "No", "Yes", "No", "No", "Yes")
my.dog$Vaccinated <- vaccinated
my.dog

# Add a new observation to the bottom of the data frame of Milo, so it looks like this:

#        Months.old        Size Weight Breed Vaccinated
#Flipper         53      medium     21   cat        Yes
#Bromley         19       small      8   cat        Yes
#Nox             34      medium      4   dog         No
#Orion           41       large      6   dog        Yes
#Dagger          84       small      7   cat         No
#Zizi           140 extra small      2   dog         No
#Carrie         109       large     36   cat        Yes
#Milo            67       small      7   dog        Yes

#Create the data frame Milo
my.dog
milo <- data.frame(Names = "Milo", Months.Old = 67, Size = "small", Weight = 7, Breed = "dog", Vaccinated = "Yes")
my.dog <- rbind(my.dog, milo)
my.dog

# How many rows and columns does your new data frame have? What are their names, and what is the class of each variable (the answer to this will be different depending on whether you create your data frames by encoding the string variables as factors or not).

nrow(my.dog) # Has 8 rows

ncol(my.dog) # Has 6 columns

colnames(my.dog)
rownames(my.dog)

str(my.dog)

# 2. Load the diamonds data set from the ggplot2 package. Check its class and if it isn't a data frame, convert it to one.

library(ggplot2)
diamonds
str(diamonds) # Is a table

my.diamonds <- as.data.frame(diamonds)
my.diamonds

# 3. Load the built-in UsJudgeRatings data set and check its class. If it's not a data frame, convert it to one.

USJudgeRatings
head(USJudgeRatings)
str(USJudgeRatings) # Is a data frame

# Create a new variable called AVRG and calculate the average rating for each judge. Save this variable in a separate data frame.

rownames(USJudgeRatings) <- NULL

