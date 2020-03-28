######
#Author: Nashipae Waweru
#Date: 28/MARCH/2020
#Title: Building a function



# Write a function that flips a coin 100 times.
# Solution

flip <- function(){
  coin <- c("Head", "Tail")
  result <- sample(coin, size = 100, replace = TRUE, prob = c(0.3, 0.7) )
  print(result)
}

flip()

?sample()

# Hint: create a coin object that stores the values "heads" and "tails".
  
# Make the coin unfair so that 70% of the time it comes up tails.