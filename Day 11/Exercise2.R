######
#Author; Nashipae Waweru
#Date; 27/MARCH/2020
#Title; Exercise2
######

# Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.
#Solution

monster <- c(T, T, T, F, T, T, T, T, T, T)
# Attach the vector you just created to the yugioh vector. Check the type of yugioh.
#Solution

yugoih <- c(monster, yugoih)
print(yugoih)
typeof(yugoih)

# Is this what you expected? Yes

# Combine atk and monster into a vector called coerce.check. Check its type and print it, if you need. Try to get the value printed on your screen without typing in the print() command. Can you do that?
#Solution

coerce <- c(atk, monster)
print(coerce)
typeof(coerce)

# What conclusions can you draw from this about R's coercion rules?
#If a vector has any logical and numeric elements, all logical elements will be converted to logicals

