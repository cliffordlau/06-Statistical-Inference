# 0. Intro ----------------------------------------------------------------
# Use simulation to explore inference and do some simple inferential data 
# analysis. 
# The project consists of two parts:
#
# 1. A simulation exercise.
# 2. Basic inferential data analysis.
#
# Each pdf report should be no more than 3 pages with 3 pages of 
# supporting appendix material
# 


# 1. Librarys -------------------------------------------------------------
library(ggplot2)
library(dplyr)

# 2.1 Simulation ----------------------------------------------------------
n <- 40
nosim <- 1000
lambda <- 0.2
set.seed(1234)

sim <- function(nosim, n, lambda) {
  mns <- NULL
  for(i in 1:nosim) {
    mns <- c(mns, mean(rexp(n, lambda)))
  }
  tbl_df(data.frame(average = mns))
}

sim1 <- sim(nosim, n, lambda)
# 2.2 Mean ----------------------------------------------------------------

# Simulation mean
simmean <- mean(sim1[[1]])

# Theoratical mean
theomean <- 1/0.2

# 2.3 Variance ------------------------------------------------------------
simvar <- sd(sim1[[1]])^2
theovar <- 1/0.2

# 2.4 Distribution --------------------------------------------------------
ggplot(sim1, aes(average)) + 
  geom_histogram(binwidth = 0.5) +
  geom_vline(x = simmean) +
  geom_text(x = simmean, y = 0, hjust = -0.5, vjust = 1,
            label = round(simmean,3))

qqnorm(sim1[[1]])
qqline(sim1[[1]])

