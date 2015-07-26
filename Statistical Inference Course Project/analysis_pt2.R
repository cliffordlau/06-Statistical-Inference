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
library(gridExtra)
library(dplyr)

# 2.1 Exploratory plots ---------------------------------------------------
data("ToothGrowth")
tooth <- tbl_df(ToothGrowth)

summary(tooth)
glimpse(tooth)

levels(tooth$supp)

ggplot(tooth, aes(len)) + geom_histogram(binwidth = 4)
ggplot(tooth, aes(supp, len, factor(dose))) + geom_boxplot() + facet_grid(. ~ dose)


# 2.2 CI T test -----------------------------------------------------------
fit <- lm(len ~ supp + dose, data = tooth)

t.test(len ~ supp, paired = FALSE, data = tooth)
t.test(len ~ dose, data = tooth)

