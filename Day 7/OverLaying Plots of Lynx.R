===
title: "Day 7"
author: "Nashipae Waweru"
date: "18/JAN/2020"
segment: "Overlaying plots"
===
  
#Overlaying plots is super imposing plots over each other.
#Just because you can doesn't mean you should. 

#LOAD BASE PACKAGES.
library(datasets)

#Information about our data frame: lynx.
?lynx

#Basic summary and view of lynx.
head(lynx)
tail(lynx)
summary(lynx)
View(lynx)

#HISTOGRAM#####

#Basic histogram using hist() function.
hist(lynx)

#Histogram using options.
hist(lynx,
     breaks = 14,
     col = "red",
     main = "Histogram of Lynx",
     xlab = "No. of Lynx Trappings",
     ylab = "Frequency")

#Alternatively,
hist(lynx,
     breaks = 14,
     freq = FALSE,
     col = "purple",
     main = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821-1934"),
     xlab = "No. of Lynx Trappings")

# Now, let's add a normal distribution curve onto our histogram
#Remember that the parameters for a normal distribution are mean and standard deviation.

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "black",
      lwd = 3,
      add = TRUE) 

#Adding two kernel density estimators.
lines(density(lynx),
      col = "blue",
      lwd = 2)

lines(density(lynx, adjust =3),
      col = "yellow",
      lwd = 2)

#Add rug plot to the rest
rug(lynx, lwd = 2, col = "black")

#CLEAN UP#####
detach(datasets)

