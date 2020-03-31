#####
#Author: Nashipae Waweru
#Date: 30/03/2020
#Title: Vectors
#####

#Vector Arithmetic

vec <- c(1, 2, 3)
vic <- c(11, 12, 13)

vec + vic
vec - vic

vec / vic
vec * vic

mean(vic)
median(vic)
sd(vic)

sum(vic)
prod(vec)

min(vic)
max(vec)


#Vector Recycling


#Vector Attributes
#Names

age <- c(23, 26, 24, 26)

attributes(age)
names(age)

names(age) <- c("George", "John", "Paul", "Ringo")
attributes(age)
names(age)

names(age) <- c("Baby", "Guchi", "Grace", "Nash")
age

names(age) <- NULL
age
attributes(age)

#######EXERCISE###########

# Requirements: the following vectors: the original cards object, and atk from the second exercise.

cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged D ragon of Ra", "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knigh")

atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

# Assign a name to each element from the atk vector that corresponds to a character from the cards vector.

names(atk) <- c("Blue-Eyes White Dragon", "Exodius", "The Winged D ragon of Ra", "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knigh")
##names(atk) <- cards##
atk

# Check the attributes of the atk element.

attributes(atk)

# Is there another command you can use to check if the atk object has names assigned to it?
names(atk)

# Remove the names.
names(atk) <- NULL

# Can you think of another way to assign names to the atk object?
# Assign when creating an object.

###### Indexing and slicing vectors #######
# Operations that are used in selecting specific values

n.deck <- c(6:10)
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

#Select a value from an object by index ie. indexing

deck[4]
deck[-4]
deck[c(1, 3, 5)]

names(n.deck) <- deck
n.deck

n.deck["Contessa"] #By name
n.deck[c("Ambassador", "Duke", "Captain")]

#Slicing:selecting several consecutive values at once

n.deck[3:5]

lv <- seq(10, 100, by = 10)
lv

lv[-(4:7)]

lv[lv>30]



###### EXERCISE 2 ######

# Requirements: the following vectors: the named atk object from the previous exercise.

atk

# Extract the following values from the atk object:

#The 6-th value (can you do it in more than one way)

atk[6]
atk[-c(1, 2, 3, 4, 5, 7, 8, 9, 10)]

#All the values but the 2nd one

atk[-2]

#Values 1, 3, 5, 7, and 9

atk[c(1, 3, 5, 7, 9)] 

#All the values but the 4th, 5th, and 6th

atk[-c(4, 5, 6)]

#All the values larger than 2000

atk[atk>2000]


### Changing the dimensions of a vector ###

a <- seq(10, 120, by = 10)
a
typeof(a)
class(a)
dim(a) <- c(3,4)  #The number of rows is defined first
a #R has filled the matrix column by column

#Classes
#Classes change wen subjected to change of dimension
typeof(a)


####### EXERCISE 3 ######
# Create a vector s that stores the number sequence 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30.

s <- seq(2, 30, by = 2)
s

# Check the attributes of s.

attributes(s)

# Does it have any dimensions?
# NO

# Give it dimensions. Try specifying 3 rows and 5 columns.

dim(s) <- c(3, 5)
s

# What happens if we try to go beyond the traditional height and width properties and specify a value for depth, too. Let's create a hypercube that has 1 row, 3 columns and 5 "slices".

dim(s) <- c(3, 5, 5)

#It runs an error

# Try assigning the following dimensions to s: 1, 3, 5.

dim(s) <- c(1, 3, 5)
s

# Can you do more than that? Do you think this could be useful for something?
# Can't wait to find out 
