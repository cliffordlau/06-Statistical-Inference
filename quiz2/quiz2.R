# Ex from lecture on normal
nosim <- 1000
# number of sample
n <- 10
# 10 columns and 1000 rows
# Each row is the mean of 10 IID draw
sd(apply(matrix(nrnorm(nosim * n), nosim), 1, mean))
# same if you just do
1/sqrt(n)

# Q1: What is the variance of the distribution of the average an IID draw 
# of n observations from a population with mean mu and variance sigma 2.

# Just sigma^2/n 

# Q2: Suppose that diastolic blood pressures (DBPs) for men aged 35-44 
# are normally distributed with a mean of 80 (mm Hg) and a standard 
# deviation of 10. About what is the probability that a random 35-44 
# year old has a DBP less than 70?

pnorm(70, 80, 10)

# Q3: Brain volume for adult women is normally distributed with a mean of 
# about 1,100 cc for women with a standard deviation of 75 cc. What brain 
# volume represents the 95th percentile?

qnorm(0.95,1100, 75)

# Q4: Refer to the previous question. Brain volume for adult women is 
# about 1,100 cc for women with a standard deviation of 75 cc. Consider 
# the sample mean of 100 random adult women from this population. What 
# is the 95th percentile of the distribution of that sample mean?

