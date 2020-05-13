#######
# Author: Nashipae Waweru.
# Date: 18/04/2020.
# Title: Statistics
#######

install.packages("e1071")

#### Mean, Median and Mode. ####

library(tidyverse)
library(e1071) # This package is used solely for measures of assymetry

# Mean. #
# This is the sample average.

ny <- c(1, 2, 2, 3, 5, 6, 7, 8, 10, 11, 66)
la <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)

pizza <- data.frame(ny, la)

mean(pizza$ny)
mean(pizza$la)  # Not reliable since it's affected outliers


# Median. #
# This is the middle value of the sample.

median(pizza$ny)
median(pizza$la)   # This guves a more accurate value


# Mode. #
# This refers to the most frequent value in a set.
# However there is no in-built function i R so, let's make a function!!!!!

x <- table(pizza$ny) # This is a contigency table ie. a frequent distribution table.
x
names(x)[which(x==max(x))]

# Remember, for easier work let's use the summary() function.

summary(pizza)



#### SKEWNESS. #### 
# This refers to the lack of symmetry and can be either positive or negative

col.1 <- c(1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 7)
col.2 <- c(1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7)
col.3 <- c(1, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 7)

df <- data_frame(col.1, col.2, col.3)

summary(df)

# Let's create histograms to show the symmetry of each vector

hist1 <- ggplot(df, aes(x = col.1))
hist1 + geom_histogram(binwidth = 1, color = "white", fill = "purple") +
  ggtitle("Positive Skew/ Right skew")
# Here the outliers are to the right thus the right skew name. 
# Also, mean > median and the mode is the highest bar

hist2 <- ggplot(df, aes(x = col.2))
hist2 + geom_histogram(binwidth = 1, color = "white", fill = "red") +
  ggtitle("Zero/No Skew")
# Here the data is completely symmetrical
# Also, mean = median = mode

hist3 <- ggplot(df, aes(x = col.3))
hist3 + geom_histogram(binwidth = 1, color = "white", fill = "orange") +
  ggtitle("Negative Skew/ Left Skew")
# The outliers are towards the left thus called "Left Skew"
# And, mean < median



#### EXERCISE. ####

# Load the two data sets into R: "skew_1.csv", and "skew_2.csv".

skew1 <- read.csv(file.choose(), stringsAsFactors = FALSE)
skew1 <- as.tibble(skew1)

skew2 <- read.csv(file.choose(), stringsAsFactors = FALSE)
skew2 <- as.tibble(skew2)

# Identify the skew of the data sets, both visually, and numerically. 

# Analysis of Skew1

# Numerically 
summary(skew1) 
      # Mean = 370.0
      # Median = 339.0
      # Since mean > median then our data has a postive skew.

# Visually: Let's create a histogram.

hist.skew1 <- ggplot(skew1, aes(x = Dataset.1))
hist.skew1 + geom_histogram(binwidth = 150, color = "white", fill = "red") +
  ggtitle("Positive Skew")
       # This confirms our result numerically since the outliers are to the right of the graph.


# Analysis of Skew2

# Numerically
summary(skew2)
     # Mean  = 603.7
     # Median = 654.5
     # Since mean < median then we expect a negative skew

# Visually.

hist.skew2 <- ggplot(skew2, aes(Dataset.2))
hist.skew2 + geom_histogram(binwidth = 100, color = "white", fill = "green") +
  ggtitle("Negative Skew")
     # This confirms our result above.

# Try to interpret what you are seeing.
# Visual representation might be misleading therefore use R calculations to confirm

# Alternatively we could use Skewness () function to calculations.
skew1.vector <- skew1$Dataset.1 
skewness(skew1.vector) # 0.5692914 is a positive skew.

skew2.vector <- skew2$Dataset.2
skewness(skew2.vector) # -0.3344008 is a negative skew.
