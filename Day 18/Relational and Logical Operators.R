#######
# Author: Nashipae Waweru
# Date: 4/04/2020
# Title: Fundamentals of Programming
#######

###  Relational/Comparison Operators ###

# Equal to
3 == 3
"cat" == "cat"
"cat" == "grace" 
TRUE == TRUE
FALSE == TRUE

# Inequality operator
"sugar" != "salt"
5 != 7
7 != 7
TRUE != TRUE
FALSE != TRUE

# Less and greater than
7 > 5
"rat" > "cat" # Greater 
TRUE > FALSE # Using coercion True=1 and False=0
TRUE < FALSE

# In objects
7 >= 5
7 <= 4



### LOGICAL/BOOLEAN OPERATORS ###

a <- 9

# Using & operator
(a < 12) & (a > 6)
TRUE & TRUE # The only combination that R returns true when using & operator
TRUE & FALSE # Returns false

# Using | operator
# Inclusive
(a < 5) | (a > 5)
(a > 1) | (a < 15)
(a > 10) | (a > 5)
(a < 1) | (a > 10) # Returns false because both are false

TRUE | TRUE  # TRUE
TRUE | FALSE # TRUE
FALSE | TRUE # TRUE
FALSE | FALSE # FALSE

# Using ! operator
# Flips the result of a logical test

!TRUE
!(4 > 2)
!("nash" > "rash")
!(TRUE == FALSE)


### FEATURING VECTORS ###
# Element y element

r <- c(1, 3, 5, 7)
s <- c(1, 2, 3, 4)

3 == r
3 == s

12 > c(11, 11, 13, 14)

"car" == c("crisps", "car", 22, "cup")
c(11, 12, 13) >= c(10, 12, 14)

(r >= 3) & (r < 7)
!(s != 5)
(s > 4) | (r < 7) 

