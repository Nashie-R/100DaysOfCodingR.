#######
# Author: Nashipae Waweru
# Date: 8/04/2020
# Title: Bulding a Function 2.0
#######

### Function 1.0 ###

# draw <- function(){
# deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
# hand <- sample(deck, size = 3, replace = TRUE)
# print(hand)
# }
# draw()

draw <- function(deck){
  hand <- sample(deck, size = 3, replace = TRUE)
  print(hand)
}
draw()

# Since the card is dealt insteadd of drawing in most card games
# Let's factor in that in our function


coup <- matrix(rep(c("Duke", "Assassin", "Captain",
                     "Ambassador", "Contessa"), 3), ncol = 1)
coup

deal <- function(deck){
  cards <- deck[1:3, ]
  print(cards)
}

deal(deck = coup)

shuffle <- function(deck){
  random <- sample(1:23, size = 23)
  deck.s <- deck[random, , drop = F]
  print(deck.s)
}
shuffle(deck = coup)


multiply.12 <- function(x){
  y <- x*12
  return(y)
}
new.multiply <- multiply.12(4)
new.multiply


shuffle <- function(deck){
  random <- sample(1:23, size = 23)
  deck.s <- deck[random, , drop = F]
  return(deck.s)
}

deal <- function(deck){
  shuffled <- shuffle(deck)
  cards <- shuffled[1:3, ]
  return(cards)
}


### EXERCISE ###

# What are the principles that determine how R looks up values?

R consideres the enviroment. Starting off with the local environment moving on to the global one in that particular direction.

# What does this function return? Try to make a prediction before you run it. 

# 202

# Try to explain why that is.

f <- function(x) {
  f <- function(x) {
    f <- function(x) {
      x ^ 2
    }
    f(x) + 1
  }
  f(x) * 2
}

f(10)
