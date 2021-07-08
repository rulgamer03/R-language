# Chapter 2

("ggplot2")
library("ggplot2")

x <- seq(-1,1, by = 0.2) # from -1 to 1 by 0.2
x

y <- x^3
qplot(x,y) # Graph x and y

x <- c(1,2,2,2,3,3)
qplot(x,binwidth=1)

x2 <- c(1,1,1,1,1,2,2,2,2,3,3,4)
qplot(x2,binwidth=1)

replicate(3,1+2)
replicate(10,roll())

# Lets simulate 10000 rolls
rolls <- replicate(10000,roll())
qplot(rolls, binwidth=1)

#getting help 
?sqrt
?log10
?sample

??log # forgotten the function's name

roll4 <- function(){
  die <- 1:6
  dice <- sample(die,size=2,replace=TRUE, prob = c(1/8, 1/8, 1/8, 1/8,  1/8, 3/8))
  # To pick 1 through 5 with probability 1/8 and
  # 6 with probability 3/8
  sum(dice)
}
rolls <- replicate(10000,roll4())
qplot(rolls,binwidth=1)
