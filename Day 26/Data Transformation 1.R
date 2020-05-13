#######
# Author: Nashipae Waweru.
# Date: 12/04/2020
# Title: Data Transformation
#######

library(tidyverse)

star <- starwars
star

View(star)

#### Filter function ####

filter(star, species == "Droid")
filter(star, species == "Human", homeworld == "Tatooine")

# Using filter with logical operators
filter(star, eye_color == "blue" | eye_color == "yellow" | eye_color == "red",
       species == "Human")


#### Select() ####

select(star, name, birth_year, homeworld, species, starships)
select(star, name, homeworld:starships)

# Works with starts_with() and ends_with()

# If I want to get all  the columns that end with colouration
select(star, name, ends_with("color"))

# everything()

select(star, name, species, homeworld, everything() )

#### Mutate() ####
# Creates a new variable and preserves the rest

star <- mutate(star, bmi = mass/((height/100)*(height/100)))

select(star, name, height, mass, bmi)


#### Transmute() ####
# Adds a new variable then drops the rest

star.trans <- transmute(star, bmi = mass/((height/100)*(height/100)))
star.trans


