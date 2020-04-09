#######
# Author: Nashipae Waweru
# Date: 5/04/2020
# Title: Control Statements
#######

### If, Else, Else-if Statements ###
# if(condition){
    #code }

num <- -2
if(num < 0){
  print("Your number is negative")
}

v <- -5
if(v < 0){
  v <- v*-1
  print(v)
}


### If..Else ###
if(A){
  Scenario 1
} else{
  Scenario 2
}

v <- -5
if(v < 0){
  v <- v*-1
  print("I have made your object positive.Look: ")
  print(v)
}else{
  print("The object was already positive.")
}

### Else-if statement ###
if(A){
  Scenario 1
} else if(B){
  Scenario 2
}else if(C){
  Scenario 3
}

v <- 0
if(v < 0){
  print("The object was less than 0, but I'm working on it!")
  print("Wait for it")
  v <- v*-1
  print("Your object is now positive, Check it out!")
  print(v)
} else if(v == 0){
  print("Your object is exactly zero")
} else if((v > 0) & (v < 12)){
  print("Your object is a positive number less than 12")
} else{
  print("Your object is a positive number greater than 12")
}


####### EXERCISE #######
# What are the components of an if-else statement? Define the syntax.
if(A){
  Scenario 1
}else if(B){
  Scenario 2
}else if(C){
  Scenario 3
}else{
  Scenario 4
}


# Write a statement that prints "Rotten!" if the input is equal to or larger than 1 and less than 60,
# "Fresh" if the input is equal to or larger than 60 and less than 75,
# and "Certified Fresh!" if the input is equal to or larger than 75.
# For any other value, the statement should print "Please input a number between 1 and 100"


c <- 134
if((c >= 1) & (c < 60)){
  print("Rotten!")
}else if((c >= 60) & (c < 75)){
  print("Fresh")
}else if((c >= 75) & (c < 100)){
  print("Certified Fresh!")
}else{
  print("Please input a number bewteen 1 and 100")
}


# NOTES

z <- c(1, 0, -3, 5)
w <- 6

if(z < 3){
  print("I love singing")
}

z < 1 

# Creating an if...else statement with conditions that are not
# mutually exclusive

if(w < 7){
  print("w is less than 7")
} else if(w == 6){
  print("w is exactly 6")
}else{
  print("w is more than 7")
}

# For the above code for the conditions evaluate TRUE yet only the first one was printed ie.
# If statemenr only requires one conditon to evaluate TRUE

w <- 8
