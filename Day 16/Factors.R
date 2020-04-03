#######
# Author: Nashipae Waweru
# Date: 3/04/2020
# Title: Creating a factor
#######

####### CREATING A FACTOR #######

marital.status <- c("Married", "Married","Single", "Married", "Divorced",
                    "Widowed", "Divorced")
str(marital.status)

marital.factor <- factor(marital.status)  #This is a nominal variable
marital.factor
typeof(marital.factor)
str(marital.factor) # Levels are ordered alphabetically

# Ordinal variable

new.factor <- factor(marital.status,
                     levels = c("Single", "Married", "Divorced", "Widowed"))
str(new.factor)

levels(new.factor) <- c("s", "m", "d", "w")
str(new.factor)

# Alternatively, you can name a factor directly in the factor function using the label argument
new.factor <- factor(marital.status,
                     levels = c("Single", "Married", "Divorced", "Widowed"),
                     labels = c("Sin", "Mar", "Div", "Wid"))
str(new.factor)

ordered.factor <- factor(marital.status, ordered = TRUE,
                         levels = c("Single", "Married", "Divorced", "Widowed"))
str(ordered.factor)


####### EXERCISE #######

# Requirements: the chess matrix from Exercise 11.
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

# Creating a matrix
Player <- c("dark", "dark", "dark", "dark", "dark", "light", "light", "light", "light", "light")
Piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- matrix(c(Player, Piece), nrow = 10, ncol = 2,
                dimnames = list(c(1:10), c("Player", "Piece")))
chess

# Save the Piece column of the matrix as a vector.

piece.vector <- chess[ , "Piece"] 
piece.vector
is.vector(piece.vector)

# Create a factor from the vector.

piece.factor <- factor(piece.vector)
str(piece.factor)

# Organize the levels in the following way but do not order them: King, Queen, Rook, Bishop, Knight, Pawn.

levels(piece.factor) <- c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn")
str(piece.factor)

# Rename the levels with just their initial letters. Order the levels in the way specified above.
piece.factor.new <- factor(piece.vector, ordered = T,
                           levels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"), 
                           labels = c("k", "q", "r", "b", "k", "p"))
str(piece.factor.new)
