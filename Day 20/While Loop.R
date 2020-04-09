#######
# Author: Nashipae Waweru
# Date: 6/04/2020
# Title: While Loops.
#######

### WHILE LOOP ###

n <- -12
while(n < 0){
  print("Your value n is Negative")
} # This continues looping due to a lack of the second block of code

while (n < 0) {
  print(paste("Your value equals", n))
  n <- n + 1
}

?paste


### EXERCISE ###

# Write a while loop that sums all the numbers from 1 to n 

n <- 10
j <- 1
sum <- 0

while(j <= n){
  sum <- sum + n
  n <- n - 1
  print(sum)
}


####### REPEAT LOOP #######

n <- -12

repeat{
  print(paste("Your value equals", n))
  n <- n + 1
  if(n >= 5){
    print("It is now either 5 or larger")
    print("The loop is broken")
    break
  }
}
