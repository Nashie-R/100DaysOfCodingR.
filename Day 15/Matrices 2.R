#######
# Author: Nashipae Waweru
# Date: 1/04/2020
# Title: Matrices 2
#######

# Matrix Arithmetic

b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T,
                     dimnames = list(c("The Matrix", "Reloaded", "Revolution"),
                                     c("US", "WorldWide")))
matrix.mat

# Conside that the matrix.mat is in million dollars
# If we want to convert this into billions;
# We use scaling ie. we ,ultiply or divide an entire structure by a single number

matrix.scaled <- matrix.mat / 1000
matrix.scaled

avg.margin <- matrix.mat - 121
avg.margin

#Arithmetic operations are executed element by element

budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
budget  #Matrix recycling

margin <- matrix.mat - budget
margin

matrix.mat - c(63, 150, 150)

v <- matrix(c(1:6), nrow = 3)
v
matrix.mat
matrix.multiplied <- matrix.mat*v
matrix.multiplied

##### EXERCISE 1 #####

# Lookup the runif() function. Create a 3x4 matrix with 12 random numbers generated using the runif() function; have the matrix be filled our row-by-row, instead of column-by-column.

?runif()   # Used to generated random numbers

random <- round(runif(12, min = 1, max = 10))
random
typeof(random)

data <- matrix(random, nrow = 3, ncol = 4, byrow = T)
data

# Name the columns of the matrix uno, dos, tres, cuatro, and the rows x, y, z.
colnames(data) <- c("uno", "dos", "tres", "cuatro")
rownames(data) <- c("x", "y", "z")
data

# Scale the matrix by 10 and save the result.
data.scaled <- data*10
data.scaled

# Extract a 2x4 matrix from it and save the result.
# It is good to note that extracting a matrix is subsetting a matrix
data
data.extract <- data[1:2, ]
data.extract

# Subtract the smaller matrix from the larger one. Can you do that? Why?
data - data.extract
# No
# The matrices are of different dimensions

# Extract a 3x3 matrix from the original matrix and save the result. Try the subtraction again. Can you do that? Why?
data.extract1 <- data[ ,-4]
data.extract1

data - data.extract1

# Extract the column called "uno" as a vector from the original matrix and save the result. Try the subtraction again. Can you do that? Why?

data1 <- data[ , "uno", drop = F]
data1
