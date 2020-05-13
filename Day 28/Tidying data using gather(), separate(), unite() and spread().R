#######
# Author: Nashipae Waweru
# Date: 13/04/2020
# Title: Tidying data
#######

##### gather() and separate()

# Loading my data

library(tidyverse)

# Exporting a file from my working directory

billboard <- read.csv(file.choose())
View(billboard)

# Making our data into a tibble for better manouver

billboard <- as.tibble(billboard)

# gather() reorganizes data with values as column names
# gather(data,
#      col.m:col.n,
#      key = name of new variable that will hold the values cureently mascarading as column names,
#      value = name of new variable that will hold the values previously held by the fake columns)

# Let's incorporate the pipe operator

billboard %>% gather(x1st.week:x76th.week, key = "week", value = "rank", na.rm = T) %>%
  arrange(artist.inverted)


#### Separate(...)
# Having multiple variables in a single column is another way of untidy data

tb <- read.csv(file.choose())
View(tb)

# Making it into a tibble

tb <- as.tibble(tb)

# First, let's tidy the data with gather()

tb.gathered <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = TRUE) %>%
  arrange(country)
tb.gathered



# From our data it is clear that the values m.014 are two variables
# Let's fix this using separate(...)

tb.separated <- tb.gathered %>% separate(column, into = c("sex", "age"))
view(tb.separated)

tb.separated$age <- str_replace_all(tb.separated$age, "0", "0-")
tb.separated$age <- str_replace_all(tb.separated$age, "15", "15-")
tb.separated$age <- str_replace_all(tb.separated$age, "25", "25-")
tb.separated$age <- str_replace_all(tb.separated$age, "35", "35-")
tb.separated$age <- str_replace_all(tb.separated$age, "45", "45-")
tb.separated$age <- str_replace_all(tb.separated$age, "55", "55-")
tb.separated$age <- str_replace_all(tb.separated$age, "65", "65-100")



#### Unite(...) ####
# Used when one variable is divided among two columns

tb.separated <- tb.separated %>% separate(age, into = c("age.low", "age.high"))
tb.separated

tb.united <- tb.separated %>% unite("age.new", c("age.low", "age.high"), sep = "-")
tb.united


#### Spread(...) ####
# Data that has a single observation spanning multiple rows

# Loading our data

weather <- read.csv(file.choose())
view(weather)

weather <- as.tibble(weather)

# Since the tmax and tmin on our weather data is recorded twice for each day

weather.spread <- spread(weather, key = element, value = value)
view(weather.spread)


#### Exercise ####

# The weather data we used in the last lesson was already almost tidy when we imported it. Please find a lot less tidy version in the resources for this lesson and go through the necessary steps to clean it.

# Note: read the documentation on the parse_number() function from the readr package, and try to use it when cleaning the data.

weather2 <- read.csv(file.choose(), stringsAsFactors = FALSE)
view(weather2)

weather2 <- as.tibble(weather2)

weather2.gather <- gather(weather2, d1:d31, key = "day", value = "value", na.rm = TRUE)
weather2.gather


weather2.arrange  <- weather2.gather %>% mutate(day = parse_number(day)) %>% select(id, year, month, day, element, value) %>% arrange(id, month, day, year)
weather2.arrange

weather2.spread <- spread(weather2.arrange, key = element, value = value)
view(weather2.spread)

?parse_number()

# Play around with the tb data, too; try to reproduce what we did in the lesson - you will need to do a little bit more tidying than we did together. Hint: if you are confused about what to do with the gender-age variables, try reading the documentation on the str_replace() function from the stringr package.

tb1 <- read.csv(file.choose(), stringsAsFactors = FALSE)
View(tb1)

tb1 <- as.tibble(tb1)

# So first we have to include a separator in our data as its non-existent in the columns

?str_replace()

names(tb1) <- str_replace(names(tb1), "m", "m.")
names(tb1) <- str_replace(names(tb1), "f", "f.")
names(tb1)

tb1$f.u <- NULL
tb1$m.04 <- NULL
tb1$m.514 <- NULL
tb1$m.u <- NULL
tb1$f.04 <- NULL
tb1$f.514 <-NULL

tb1.gather <- gather(tb1, m.014:f.65, key = "column", value = "values", na.rm = TRUE)
tb1.gather

tb1.separate <- tb1.gather %>% separate(column, into = c("gender", "age")) %>% arrange(country)
tb1.separate

tb1.separate$age <- str_replace_all(tb1.separate$age, "0", "0-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "15", "15-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "25", "25-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "35", "35-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "45", "45-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "55", "55-")
tb1.separate$age <- str_replace_all(tb1.separate$age, "65", "65-100")

tb1.separate
