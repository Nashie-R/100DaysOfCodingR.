#######
# Author: Nashipae Waweru.
# Date: 21/04/2020.
# Title: Hypothesis Testing.
#######

# There are 6 steps in dat-driven decision making:
# 1. Define a Research question.
# 2. Generate a theory based on the question.
# 3. Formulate a hypothesis of the theory.
# 4. Find a correct test for our hypothesis.
# 5. Execute the test
# 6. Make a decision based on the results of the test.

# Hypothesis is a statement that can be tested.
# Types of hypothesis:
    # Alternative Hypothesis(H1) - predicts true
    # Null Hypothesis(H0) - predicts FALSE.

# Rejection level: If the null hypothesis value is inside the rejection region, you reject the null hypothesis.
# Significance level: The probability of rejecting the null hypothesis, if it is true.

# Hypothesis Errors:
# 1. Type 1 error: Rejecting the true null hypothesis. The probability of making this error is alpha(significance level).
# 2. Type 2 error: Accepting a false null hypothesis.  


#### Test for the Mean, Population and Variance known. ####

# Loading the necessary packages.

library(tidyverse)

# Importing our data set.

sal <- read.csv(file.choose(), stringsAsFactors = FALSE)
View(sal)
summary(sal)

# According to online resources, the population standard deviation is 15,000 and the mean is 113,000


# Hypothesis: The average salary of data scientists is 113,00$
# Null Hypothesis :mean = 113,000
# Alternative Hypothesis: mean is not equal to 113,000

# Since, R doesn't have a function for standardizing values into z-vales. Let's create our own function.
 
z.test <- function(a, mu, sd){
  zeta = (mean(a) - mu)/(sd/sqrt(length(a)))
  return(zeta)
}  
  
z.test(a = sal$salary, mu = 113000, sd = 15000)

# Given our level of significance is 0.05 and we are using the two-tailed test, we check on the z-score for our criticsl values.
# They will be: -1.96 and + 1.96
# Therefore, the z-statistic is if z > 1.96 reject your null hypothesis

# since our z = -4.674 the absolute value is greater than our critical value. Therefore, reject the null hypothesis

# Conclusion is : The average salary of data scientists is not 113,000$


#### EXERCISE. ####

# Using the data from the lesson, test the null hypothesis at 10% significance

# sample mean: $100,200
# population sd: $15,000
# standard error: $2,739
# sample size: 30
# z-score: -4.67 
# H0 (Glassdoor data): $113,000
# two-sided test

# Since we already know our z-score. Let's get our critical values at 10% significance
# The critical values are: -1.65 and +1.65
# The z-stat: if absolute z > 1.65 we reject the null hypothesis
4.67 > 1.65 # TRUE

# Reject that the average salry is 113,000$
