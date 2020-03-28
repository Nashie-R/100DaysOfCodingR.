#######
#Author: Nashipae Waweru
#Date: 28/MARCH/2020
#Title: Exercise 4
#######


# Find what arguments the sample() function takes. We will need that for later.
# Solution
# sample(vector.name, size=__, replace = TRUE/FALSE)


# Find out what arguments the median function takes. While calling the median for the lvl object, try setting the na.rm = argument to TRUE. 
# Solution
? median()
# Arguments
# x which is the object 
# na.rm which is a logical value which indicates whether na values should be dropped

# Does R return a different value from the one when na.rm = is set to FALSE (NB: the default value for the na.rm = argument is FALSE; this means that whenever we do not explicitly specify that it must be set to TRUE, it is set to FALSE)? 
# yes

# Now try the same command but with the atk variable. 
median(atk)
median(atk, na.rm = TRUE)

# Is the output different? Why do you think that is?
# Yes
# In the default median function, the NA values have been included but excluded in the second option