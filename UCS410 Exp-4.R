# Question 1
x <- 0:4
p.x <- c(0.41, 0.37, 0.16, 0.05, 0.01)

sum(x * p.x)
weighted.mean(x, p.x)
c(x %*% p.x)


# Question 2
density.function <- function(t) {0.1 * exp(-0.1 * t)}
integrand <- function(t) {t * density.function(t)}
integrate(integrand, lower = 0, upper = Inf)


# Question 3
x <- 0:3
p.x <- c(0.1, 0.2, 0.2, 0.5)

E.x <- weighted.mean(x, p.x)

Y <- (12 * E.x) + (2 * (3 - E.x)) - (6 * 3)
print(Y)


# Question 4
pdf <- function(x) {0.5 * exp(-abs(x))}

# first moment
first.integrand <- function(x) {x * pdf(x)}
first.moment <- integrate(first.integrand, lower = 1, upper = 10)
print(first.moment)

# second moment
second.integrand <- function(x) {(x^2) * pdf(x)}
second.moment <- integrate(second.integrand, lower = 1, upper = 10)
print(second.moment)

# variance
variance <- as.numeric(second.moment[1]) - (as.numeric(first.moment[1]))^2
print(variance)


# Question 5
g <- function(x) {x^2}
prob.dist.y <- function(y) {
  if (sqrt(y) - floor(sqrt(y)) == 0) {
    (3/4)*(1/4)^(sqrt(y) - 1)
  }
  else {
    0
  }
}

X <- 3
print(prob.dist.y(g(X)))

X <- c(1, 2, 3, 4, 5)
Y <- g(X)
P.y <- sapply(Y, prob.dist.y)

E.y <- sum(Y * P.y)
print(E.y)

var.y <- sum((Y^2) * P.y) - (E.y)^2
print(var.y)