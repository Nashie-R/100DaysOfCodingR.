#######
# Author: Nashipae Waweru
# Date: 03/04/2020
# Title: Lists
#######

####### LISTS #######

# Creating a list

my.book <- list("The Aventures of Ulwe", "Lupita Nyongo", 2019,
                list(c(1:8), c(1:10), c(1:6), "Newspeak"))
my.book
str(my.book)

# Inputting names in line
my.book <- list(Name = "The Adventure of Ulwe",
                Author = "Lupita Nyong'o",
                Published = 2019,
                Contents = list(Part One = c(1:8),
                                Part Two = c(1:10),
                                Part Three = c(1:6),
                                Appendix = "Newspeak"))

#Alternatively

names(my.book) <- c("Name", "Author", "Published", "Contents")

#This doesn't name the internal elements of the list therefore,

#Extracting a list or element from a list ie. subsetting

my.book[1:2] #a list having the first two elements in my.book
my.book[4]
my.book[[4]]
my.book[[4]][2]
my.book[[4]][[2]] #Extracts the vector 1:10 as a vector and has all vector functionality

####### EXERCISE #######

# create a list which prints like this: 

# [[1]]
# [1]  1  3  5  7  9 11
#
# [[2]]
# [[2]][[1]]
# [1] "Happy Birthday"
#
# [[2]][[2]]
# [1] "Archery" 

my.list <- list(c(1, 3, 5, 7, 9, 11), list("Happy Birthday", "Archery"))
my.list

# extract the numbers as a vector

my.list[[1]] 

# extract the phrase Happy Birthday as a vector

my.list[[2]][[1]]

# extract the second item of the second list as a list

my.list[[2]][2]

# extract the second list as a list

my.list[2]

# extract the numbers item as a list

my.list[1]

# add 2 to each element in the numbers item

my.numbers <- my.list[[1]]
my.numbers <- my.numbers + 2 
my.numbers 
 
# name the items in the list as "Numbers" and "Phrases"
names(my.list) <- c("Numbers", "Phrases")
my.list

# you can use the $ to extract named items of a list
# if you extract the numbers item from newList with the $, what other extraction method is this equivalent to?
my.list$Numbers
# Equivalent to
my.list[[1]]

# use the dollar sign to repeat the addition from above (add 2 to each element in the numbers list)

my.number <- my.list$Numbers + 2
my.number

# add a new item called "Brands" to the list. It should contain the brands Kellogs, Nike, iPhone
# use either brackets or the dollar sign to do that

my.list[["Brands"]] <- c("Kellogs", "Nike", "iPhone")
my.list

# remove the iPhone from the Brands item

my.list$Brands <- my.list$Brands[-3]
my.list

# remove the Brands item from the list
my.list[["Brands"]] <- NULL
my.list
