# Function
# General form
new.f <- function(arg) {
  # action
}

# A function that determines odd and even numbers
eoo <- function(n) {
  if (n %% 2 == 0) {
    "even"
  } else {"odd"}
}

#Task: write a function which takes a vector and 
#  return the sum of square of its elements
sum.of.square <- function(vec) {
  return(sum(vec^2))
}

v <- c(1, 3, 5)
sum.of.square(v)

# A function can also take multiple arguments

newfunction <- function(x, y = 2) {
  return(x %% y)
}
newfunction(10)
newfunction(10, y = 3)

# Task: Write a function which takes a vector and a scalar, 
# and then returns all the elements in the vector 
#  which are smaller than the number
threshold <- function(vec, x) {
  if (x <= min(vec)) {
    NA
  } else{return(vec[vec < x])}
}
threshold(1:100, 60)
threshold(1:100, 0)


#Environment
x <- 10
g <- function(y) {
  return(x + y)
}
g(2)

g1 <- function(y) {
  x <- 10
  return(x + y) 
}
g1(2)
x <- 100
g1(2)

g3 <- function(y) {
  x <- 1
  f <- function(y) {return(x + y)}
  return(f(y))
}
g3(2)

# Apply
m <- matrix(1:9, 3, 3, byrow = TRUE)
# From what we know so far, how do we get mean of each row/column?
# Loop, but it is inefficient

apply(m, 1, mean)
apply(m, 2, mean)
rowMeans(m)
colMeans(m)

# apply function with multiple arguments
apply(5, threshold, m, 1)

# lapply and sapply: apply to lists or vectors
sos <- function(x, y) {
  return(x^2 + y^2)
}

lapply(m, sos, y = 3)

l <- list(v, 79, m)
lapply(l, sos, 3)
sapply(l, sos, 3)

lapply(1:10, function(x) x^2)
unlist(lapply(1:10, function(x) x^2))
sapply(1:10, function(x) x^2)

# mapply: multivariate apply
mapply(rep, 1:5, 5:1)

mapply(rep, 1:2, 1:4)

# tapply and factor
tapply(ToothGrowth$len, ToothGrowth$supp, mean)




