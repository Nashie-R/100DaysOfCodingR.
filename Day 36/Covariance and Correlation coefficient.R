#######
# Author: Nashipae Waweru.
# Date: 20/04/2020.
# Title: Statistics.
#######

#### MEASURES OF SPREAD/DISPERSION. ####
## Multivariate Measures. ##

# Load the packages.

library(tidyverse)
library(e1071)

# Loading the external data.

homes <- read.csv(file.choose(), stringsAsFactors = FALSE)
homes <- as.tibble(homes)
View(homes)

#. COVARIANCE AND CORRELATION. #
# Covariance is generally meaningless thus, we use correlation to come up with meaningful information.

# Let's create a scatter plot to investigate the existense of a relationship between variables.

homes %>% subset(Date == 2001.25) %>% ggplot(aes(x = log(Land.Value), y = Structure.Cost)) + 
    geom_point() + theme_light() + labs(title = "Relationship between the land value and structure cost",
                                        x = "Land Value(transformed)",
                                        y = "Structure Cost")
  
# To get the correlation coefficient use the cor() function.

cor(homes$Structure.Cost, homes$Land.Value)

# It is good to note that the correlation coefficient is between -1 and 1.

# Alternatively, use cortest () function since it outputs more detailed information.
cor.test(homes$Structure.Cost, homes$Land.Value)
