#######
# Author: Nashipae Waweru
# Date: 09/04/2020
# Title: Data Frames
#######

# Creating a data frame

title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
           "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
           "The Force Awakens")
year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min <- c(121, 124, 133,133, 142, 140, 135)
box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059)

my.data <- data.frame(title, year, length.min, box.office.mil)
my.data

names(my.data) <- c("Movie Title", "Release Year", "Length in Minutes", "Box Office")
my.data

my.data <- data.frame(Title = title, Year = year, Length = length.min,
                      Gross = box.office.mil, stringsAsFactors = F)
my.data
 
str(my.data)


### EXERCISE ###

# Create a data frame that looks like this:

#Months old        Size Weight Breed
#Flipper         53      medium     21   dog
#Bromley         19       small      8   dog
#Nox             34      medium      4   cat
#Orion           41       large      6   cat
#Dagger          84       small      7   dog
#Zizi           140 extra small      2   cat
#Carrie         109       large     36   dog

title <- c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie")
age <- c(53, 19, 34, 41, 84, 140, 109)
size <- c("medium", "small", "medium", "large", "small", "extra small", "large")
weight <- c(21, 8, 4, 6, 7, 2, 36)
breed <- c("dog","dog", "cat", "cat", "dog", "cat", "dog")

my.dog <- data.frame(Names = title, Months.Old = age, Size = size, Weight = weight, Breed = breed)
my.dog

# Can you think of a way to invert the values for breed?
levels(my.dog[,"Breed"]) <- c("dog", "cat")
my.dog

# Hint: if you haven't set the stringsAsFactors argument to FALSE, all your character variables will be recorded as factors. Edit the levels of the Breed variable to complete the task.
