#Chapter3
five <- 5
five
is.vector(five)
length(die)


#Six basic types of atomic vectors: doubles, integers, characters, logicals
# complex and raw

#You can create an integer vector by including
#capital L

int <- 1L
text<-"ace"
int <- c(1L, 5L)
sum(int)


die<-c(1,2,3,4,5,6)
typeof(die)

# You will generally use doubles instead
# of integers as a data scientis

#Characters
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")

# Logicals

3 > 4

logic <- c(TRUE,FALSE,TRUE)
typeof(logic)
typeof(F) # F is FALSE

#Complex and Raw
comp <- c(1+1i,1+2i,1+3i)
comp
typeof(comp)

# An empty raw vector of length n
# raw(n)

raw(3)

typeof(raw(3))

hand <-c("ace","king","queen","jack","ten")
hand
typeof(hand)

#Atributes
# have any attributes 
attributes(die)
names(die)

names(die) <- c("one", "two", "three","four","five","six")
names(die)
attributes(die)
die+1

# Change the names
names(die) <- c("uno","dos","tres","cuatro","cinco","seis")
die
names(die) <- NULL
die

#Dim
#You can transform an atomic vector into an n-dimensional array by
# giving it a dimensions attribute
dim(die)<-c(2,3)
die


dim(die)<-c(3,2)
die


# or a 1 x 2 x 3 hypercube 1 row 2 columns and 3 "slices"
dim(die)<-c(1,2,3)
die


#Arrays
# an n-dimensional array

ar <- array(c(11:14, 21:24,31:34),dim=c(2,2,3))
ar


print("here")
hand1 <- c("ace","king","queen","jack","ten","spades","spades","spades","spades","spades")
matrix(hand1,nrow=5)
matrix(hand1, ncol=2)
dim(hand1) <- c(5,2)
hand1
#slightly different order
hand2 <- c("ace","spades","king","spades","queen","spades","jack","spades","ten","spades")
matrix(hand2,nrow=5,byrow = TRUE)
matrix(hand2, ncol=2,byrow = TRUE)

#class
dim(die)<-c(2,3)
die
typeof(die)
class(die)

attributes(die)

#Dates and Times
now <- Sys.time()
now

typeof(now)


class(now)

unclass(now)


# why day it was a million seconds after
# 1969-12-31 18:00:00
mil <- 1000000
mil

class(mil)<-c("POSIXct", "POSIXt")
mil


#Factors
gender <- factor(c("male","female","female","male"))
gender

typeof(gender)

attributes(gender)

# You can see exactly how R is storing
# your factor
unclass(gender)

gender

as.character(gender)

card <- c("ace", "hearts",1)
card

sum(c(TRUE,TRUE,FALSE,FALSE))
sum(c(1,1,0,0))

as.character(1)
as.logical(1)
as.numeric(FALSE)

list1 <-list(100:130,"R",list(TRUE,FALSE))
list1

list1[1]
list1[1][1]

list1[2]
list1[3]


card <- list("ace","hearts",1)
card

df <- data.frame(face=c("ace","two","six"),suit=c("clubs","clubs","clubs"),value=c(1,2,3))
df

typeof(df)
class(df)
str(df)


#Notice that R saved your character string as factors

df <- data.frame(face=c("aces","two","six"),suit=c("clubs","clubs","clubs"),value=c(1,2,3),stringsAsFactors = FALSE)
df

#Loading data

head(deck)
# saving data
write.csv(deck,file="cards.csv",row.names = FALSE)
