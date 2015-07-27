# Q1:
x <- c(140, 138, 150, 148, 135)
y <- c(132, 135, 151, 146, 130)

t.test(x - y)

# 0.087

# Q2:
1100 + qt(0.975, 9-1)*30/sqrt(9)

# 1123

# Q3:
# Not sure... 
# have to be big
# Try 0.31

# Q4:
# Also should be high... try 0.22
# Wrong, try 0.11
# Wrong agin try 0.52

# Q5:
# guess Less than 0.05, but larger than 0.01
# Try Less than 0.10 but larger than 0.05
# Try Larger than 0.1

# Q6:
# No you wouldn't reject.

# Q7:
power.t.test(n = 100, delta = 0.01, sd = 0.04, 
             alternative = "one.sided", sig.level = 0.05, type = "one.sample")

# 0.8

# Q8:
power.t.test(power = 0.9, delta = -0.01, sd = -0.04, 
             alternative = "one.sided", sig.level = 0.05, type = "one.sample")

# 140

# Q9:
# You will get larger power.
