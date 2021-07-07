#Chapter 1 The Very Basics
1+1
100:130
5-1
2*3
4-1
6/(4-1)
10+2
12*3
36-6
30/3
1:6
#Objects
a <- 1
a+2
die <- 1:6
die
my_number <- 1
my_number <- 999
my_number
ls()

die - 1

die/2

die * die

1:2

1:4

die 

die + 1:2

die + 3:4

# inner multiplication with %*%

die %*% die 

# outer multiplication

die %o% die

# Functions
round(3.1415)
factorial(3)
mean(1:6)
mean(die)
round(mean(die))


# Sample takes two arguments:
# a vector named x
# a number named size.sample
# will return size elements from the vector

sample(x=1:4, size = 2)
sample(x=1:4, size = 3)

sample(x=die, size=1)
sample(x=die,size=4)

sample(die,size=1)

# You can look up the function's arguments 
args(round)
round(3.1415,digits = 2)
sample(die,1)



sample(die, size=2, replace=TRUE)
sample(die, size=2, replace=TRUE)
sample(die, size=2, replace=TRUE)
sample(die, size=2, replace=TRUE)
sample(die, size=2, replace=TRUE)
for (i in 1:20){
  a <- sample(die, size=2, replace=TRUE)
  print(a)
}
c <- 1:2
sample(c, size=3, replace=TRUE)
# Sample may select the same value on the second draw
sample(c, size=3)
# Error in sample.int(length(x), size, replace, prob) : 
# cannot take a sample larger than the population when 'replace = FALSE'

dice <- sample(c, size=3, replace=TRUE)
dice
sum(dice)

#Writing Your own functions

roll <- function(){
  die <- 1:6
  dice <- sample(die, size=2, replace=TRUE)
  sum(dice)
}
roll()

roll()

# Arguments
roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}



roll2(bones = 1:4)

roll2(1:4)

# You can prevent a error by giving the bones argument a default value
roll3 <- function(bones = 1:6){
  dice <- sample(bones, size = 2, replace=TRUE)
  sum(dice)
}

roll3()

roll3(bones = 1:3)
