####
#Author; Nashipae Waweru
#Date: 27/MARCH/2020
#Title: Data Types

# Create a vector called cards that stores the following elements:

#Blue-Eyes White Dragon
#Exodius
#The Winged Dragon of Ra
#Raigeki
#Slifer the Sky Dragon
#Obelisk the Tormentor
#Black Luster Soldier
#5-Headed Dragon
#Exodia the Forbidden One
#Dragon Master Knigh

# Check the type of cards.

#Solution

cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged D ragon of Ra", "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knigh")
typeof(cards)

##################
# Create a vector called atk and assign to it the following values:


#3000
#NA
#NA
#NA
#NA
#4000
#3000
#5000
#1000
#5000

# Check the type of atk.

#Solution

atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
typeof(atk)

##########################

# Use the combine function to combine cards and atk into a single vector called yugioh.

# Check the type of the new object.

#Solution
yugoih <- c(cards, atk)
print(yugoih)
typeof(yugoih)

#################
# What conclusions can you draw from this? 
# If we had added TRUE/FALSE values to the atk vector, what would have the print(atk) command returned? 
# What about print(yugioh)?


#Solution
#Conclusion: Coersion is most impacted by characters as a data type
#It would have returned TRUE/FALSE as 1/0
#They would still remain to be the character value "TRUE/FALSE"