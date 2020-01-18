---
title: "Day 5"
author: "Nashipae Waweru"
date: "15/JAN/2020"
segment: "Accessing Data".
---

#DATA TYPES####
#Numeric: integer,single,double
#Character
#Logical
#Complex numbers
#Raw

#DATA STRUCTURES###
#Vector: one or more numbers in 1D array
#Matrix: Two dimensions... #Array: 3 or more dimensions
#Data Frame: Vectors of multiple types, all of same length
#List: Most flexible, ordered collection of elements

#COERSION IS GOOD!!!: CHANGING OF AN ELEMENTS FROM ONE TYPE TO ANOTHER

#DATA TYPES ####

#LOAD PACKAGES###
library(knitr)
library(tidyverse)

#Numeric

n <- 15
n
typeof(n)

n1 <- 1.5
n1
typeof(n1)

#Character

c <- "Nashipae"
c
typeof(c)

c2 <- "I love r"
c2
typeof(c2)

#Logical

l <- TRUE
l
typeof(l)

l1 <- F
l1
typeof(l1)

#DATA STRUCTURES###

#Vectors####

v <- c(1,2,3,4,5)
v
is.vector(v)

v1 <- c("a","b","c","d")
v1
is.vector(v1)

v2 <- c("T", "T", "F")
v2

v3 <- c("TRUE","FALSE")
v3
is.vector(v3)

v4 <- c(TRUE, FALSE,TRUE,TRUE)
v4

##MATRIX####

m1 <- matrix(c(T,T,F,F,T,F), nrow = 2)
m1

m2 <- matrix(c("a","b",
               "c","d"),
             nrow = 2,
             byrow = F)
m2

####ARRAY###

a1 <- array(c(1:24), c(4,3,2))
a1

##DATA FRAME####

#Combine vectors of the same length

vNo <- c(1,2,3,4)
vCha <- c("a","b","c","d")
vLog <- c(T,F,T,F)

data <- cbind(vNo, vCha, vLog)
data #Matrix of one data type

dataf <- as.data.frame(data)
dataf

##LIST####

d <- c(1,2,3,4,5)
d1 <- c("a", "b")
d2 <- c(T,T,F,F)

list1 <- list(d, d1, d2)
list1
 
#List within list
list2 <- list(d, d1, d2, list1)
list2

#COERCION###

#Automatic Coercion: Goes to the "least restrictive" data type##

(coerce1 <- c(1, "a", T))
typeof(coerce1)

## Coerce numeric to integer#
(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(coerce2))
typeof(coerce3)

### Coerse character to numeric####
(coerse4 <- c("a", "b", "c", "d"))
typeof(coerse4)

(coerse5 <- as.numeric(c("a", "b", "c", "d")))
typeof(coerse5)
coerse5

#Coerce matrix into a dataframe
(coerce6 <- matrix(1:9, nrow = 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(coerce6))
is.data.frame(coerce7)
