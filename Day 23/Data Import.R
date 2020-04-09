#######
# Author: Nashipae Waweru
# Date: 09/04/2020
# Title: Data Import and Export
#######


### Loading the tidyverse package ###

library(tidyverse)

### To check my R working directory ###

getwd()

### To import data of any general type ###
# read.table

my.pok <- read.table("pokRdex-comma.csv",
                     sep = ',',
                     header = T,
                     stringsAsFactors = F)
my.pok

# To import data of a specific file extension

my.pok <- read.csv("pokRdex-comma.csv",
                   stringsAsFactors = F, nrows = 100)
my.pok

# To import tab delimited text files
# read.delim


### Exporting Data ###

# Use write.csv or write.delim

my.data

write.csv(my.data, file = "MyFirstDataFrame.csv", row.names = FALSE)
