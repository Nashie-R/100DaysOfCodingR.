#######
# Author: Nashipae Waweru.
# Date: 19/04/2020.
# Title: Statistics
#######

#### MEASURES OF SPREAD/DISPERSION. ####
## Univariate measures ##

# Load the package

library(tidyverse)
library(e1071)

# Create our data

ny <- c(1, 2, 3, 3, 5, 6, 7, 8, 9, 11)
la <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

pizza <- data_frame(ny, la)

pizza$ny.mxn <- c(18.81, 37.62, 56.43, 56.43, 94.05,
                  112.86, 131.67, 150.48, 169.29, 206.91)

# Using the apply() function

sapply(pizza, var) # ny          la       ny.mxn 
                   #10.722222    9.166667 3793.694850 

sapply(pizza, sd) #    ny       la   ny.mxn 
                  # 3.27448  3.02765 61.59298 

coef.var <- sapply(pizza, sd)/ sapply(pizza, mean)
coef.var #    ny        la    ny.mxn 
         # 0.5953601 0.5504819 0.5953601 
