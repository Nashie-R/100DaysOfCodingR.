#######
# Author: Nashipae Waweru
# Date: 31/03/2020
# Title: Matrices
#######


# Creating a matrix

# Method 1

mtrx <- matrix(1:12, nrow = 3)
mtrx

mtrx <- matrix(1:12, ncol = 4)
mtrx # They are the same

mtrx <- matrix(1:12, ncol = 4, byrow = TRUE)
mtrx

# Method 2

usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
usa
de <- c(0.2, 0.4, 0.7, 0.8,  0.8)
de

ngo <- cbind(usa, de)
ngo
rownames(ngo) <- c("2013", "2014", "2015", "2016", "2017")
ngo

#Transposition ie changing the orientation of the dimensions
#Rows to columns and vice versa
ngo <- t(ngo) 
ngo

#Adding a row to an existing matrix
ind <- c(2, 2.2, 2.4, 2.5, 2,6)
ngo <- rbind(ngo, ind)
ngo

# Make woek easier by creating a matrix in a single line of code

gdp <- matrix(c(47.9, 41.2, 41.9, 54.6, 56.2, 57.5, 1.6, 1.6, 1.7), 
              nrow = 3, byrow = TRUE, 
              dimnames = list(c("de", "usa", "ind"),
                              c("2015", "2016", "2017")))
gdp


#### Exercise 1 ####

# Pictured below is a matrix. Recreate this matrix in at least three different ways. 

#Player  Piece   
#[1,] "dark"  "king"  
#[2,] "dark"  "queen" 
#[3,] "dark"  "pawn"  
#[4,] "dark"  "pawn"  
#[5,] "dark"  "knight"
#[6,] "light" "bishop"
#[7,] "light" "king"  
#[8,] "light" "rook"  
#[9,] "light" "pawn"  
#[10,] "light" "pawn"  

# SOLUTION

player <- c("dark", "dark", "dark", "dark", "dark", "light", "light", "light", "light", "light")
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- cbind(player, piece)
mtrx1

mtrx2 <- t(chess)                
mtrx2

mtrx3 <- matrix(c(player, piece), 
                nrow = 10, ncol = 2, byrow = FALSE,
                dimnames = list(c(1:10),
                                c("Player", "Piece")))
mtrx3

# Do matrices recycle?

example <- matrix(1:10, nrow = 4, ncol = 4)
example
# Therefore yes!!! Matrices recycle too just like vectors

# Subset and selecting values in matrix

# Create a matrix
gross <- c(381, 1340, 918, 975, 675, 698, 292, 394,
           232, 543, 679,  598, 908, 788, 132, 476)

gross.mtrx <- matrix(gross, nrow = 8, byrow = TRUE)
gross.mtrx

gross.mtrx[3, 1]
gross.mtrx[6, ] # Selects the entire 6th row
gross.mtrx[ ,2] #Entire 2nd column

# Slicing a matrix
gross.result <- gross.mtrx[c(1, 3, 7), ( 1) ]
gross.result

colnames(gross.mtrx) <- c("USA", "WorldWide")
rownames(gross.mtrx) <- c("Hallows Part 2", "Sorcerer's Stone", "Hallow Part 1",
                          "Order", "Prince", "Goblet", "Chamber", "Prisoner")
gross.mtrx

gross.mtrx["Order", ]
gross.mtrx[ , "WorldWide"]
gross.mtrx["Prisoner", "WorldWide"]


####### EXERCISE 2 #######
# Requirements: the chess object from the previous exercise.

chess

# Transpose the chess matrix, and add a row storing the following values: 3, 5, 2, 2, 7, 4, 6, 5, 2, 1

chess <- t(chess)
chess

new.chess <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)
chess <- rbind(chess, new.chess)
chess

# Name the row "Turn" and transpose the matrix back to its original orientation.

row.names(chess) <- c("Player", "Piece", "Turn")
chess

chess <- t(chess)
chess

# Extract the following values from the chess matrix:

#The first piece of the light player
chess[6, 2]
#The Player and Piece columns
chess[ , c(1,2)]
#All the information about the dark player
chess[c(1:5), c(2,3)]
#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
chess[ , 2, drop = F]
#Everything but the Piece column
chess[ c(1:10) , -c(1,3)]
#The 1st and 3rd values on the second row
chess[2, c(1,2)]
#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)
chess[7, 3] <- 3
chess[7, 3]
