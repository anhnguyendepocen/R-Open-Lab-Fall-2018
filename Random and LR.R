# Randomness
runif(10, 0, 1)
rnorm(10, 0, 1)

set.seed(10)
rnorm(10, 0, 1)

set.seed(10)
rnorm(10, 0, 1)

dbinom(5, 10, 0.5)
pbinom(5, 10, 0.5)

# Visualization of simulation
x <- rnorm(10000000, mean = 10, sd = 5)
library(ggplot2)
ggplot(data = data.frame(x)) +
  geom_histogram(mapping = aes(x, y = ..density..), binwidth = 0.5) +
  stat_function(mapping = aes(x), fun = dnorm, 
                args = list(mean = 10, sd = 5))

# Random sampling
set.seed(1)
sample(1:20, 10, replace = F)

set.seed(1)
sample(1:20, 10, replace = T)

sample(1:10)

# blue = 0.7, red = 0.2, yellow = 0.1
dr <- sample(c("b", "r", "y"), 100, prob = c(0.7, 0.2, 0.1), replace = T)
table(dr)

# dice roll
dice <- sample(1:6, 10000, prob = c(rep(0.15, 4), rep(0.2, 2)), replace = T)

# Linear regression
X <- sample(1:100, 50, replace = F)
Y <- X * 4.5 + 10 + runif(50, -50, 50)
df <- data.frame(X, Y)

lmmodel <- lm(Y ~ X, data = df)
plot(X, Y)
abline(lmmodel$coefficients[1], lmmodel$coefficients[2])





