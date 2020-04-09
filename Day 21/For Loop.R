#######
# Author: Nashipae Waweru
# Date: 7/04/2020
# Title: For Loops
#######

### FOR LOOPS ###

for (value in x) {
  y
}

title <- c("Catch", "Me", "If", "You", "Can")

for (word in title) {
  print(word)
}

new.title <- vector(length = 5) # Create an empty vector
new.title

for (i in 1:5) {
  new.title[i] <- title[i]
}

new.title


### EXERCISE ###

# Write a for loop that sums all the numbers from 1 to n

n <- c(1:100)

add <- vector(mode = "integer", length = 100)

for (number in n) {
  add[number] <- n[number]
}

add <- sum(add)
add

# Alternatively

a <- 100
sum <- 0

for (number in 1:100) {
  sum <- sum + number
  print(paste("The total sum from 1 to 100 is:", sum))
}
