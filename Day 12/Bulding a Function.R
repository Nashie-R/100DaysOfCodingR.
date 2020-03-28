===
#Author: Nashipae Waweru
#Date: 28/MARCH/2020
#Title: R SIMULATOR
  
===
  
  
#------ BUILDING A FUNCTION -------#

deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
print(deck)

#Sampling function:
#sample(object.name, size)

hand <- sample(deck, size = 3, replace = TRUE)

print(hand)

#The architecture of a function is as given:
#function.name <- function(){
# body.of.code }

draw <- function(){
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size = 3, replace = TRUE)
  print(hand)
}
draw()
