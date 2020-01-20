---
title: "Day 9"
author: "Nashipae Waweru"
date: "20/JAN/2020"
segment: "Accessing Data"
---
  
##FACTORS#######
#Categories and names of the categories
#A Factor is an attribute of a vector that specifies the possible values and their order

#Create data
(x <- 1:3)
x
(y <- 1:9 )

#Combine x and y variables
(df1 <- cbind.data.frame(x,y))
typeof(df1$x)
str(df1)

#AS. FACTOR#####
(x2 <- as.factor(c(1:3)))

#Combine x2 to y now
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2)

#Define an existing variable as a factor
(x3 <- c(1:3))
df3 <- cbind.data.frame(x3,y)
(df3$x3 <- factor(df3$x3,
                  levels = c(1,2,3)))
str(df3)

# LABELS FOR FACTORS####
(x4 <- c(1:3))
df4 <- cbind.data.frame(x4, y)
df4$x4 <- factor(df4$x4,
                levels = c(1, 2, 3),
                labels = c("Windows", "Linux", "MacOS"))
df4

x5 <- c(1:3)
df5 <- cbind.data.frame(x5, y)
df5
df5$x5 <- factor(df5$x5,
                 levels = c(1, 2, 3),
                 labels = c("Cats", "Dogs", "Goats"))
df5
typeof(df5$x5)
str(df5)

#ORDERED FACTORS AND LABELS####

x6 <- c(1:3)
x6
df6 <- cbind.data.frame(x6, y)
(df6$x6 <- ordered(df6$x6,
                 levels = c(3, 1, 2),
                 labels = c("Yes", "No", "Maybe")))
df6
typeof(df6$x6)
str(df6).
