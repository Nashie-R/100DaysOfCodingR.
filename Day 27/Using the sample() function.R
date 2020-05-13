#######
# Author: Nashipae Waweru
# Date: 13/04/2020
# Title: Sampling Data
#######

# Sample(...)
# Has two versions in the dplyr package, these are
# 1. sample_n(..) - extracts a random sample of a fixed number of rows
# 2. sample_frac(...) - extracts a random sample of a fixed fraction of rows

library(tidyverse)

star

sample(star, size = 10) # samples the columns
sample_n(star, size = 10) # samples a fixed number of rows
sample_frac(star, size = 1/4) # samples a fixed fraction of rows


