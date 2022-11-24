# Question 1 -------------------------------------------------------------------
pdf <- function(x, y) {
  2*(2*x + 3*y)/5
}

# (i)
library("pracma")
check <- integral2(pdf, xmin = 0, xmax = 1, ymin = 0, ymax = 1)
check$Q


# (ii)
x1 <- 1
g.x1 <- function(y) {pdf(x = x1, y)}

marginal.x <- integrate(g.x1, lower = 0, upper = 1)
marginal.x$value


# (iii)
y0 <- 0
h.y0 <- function(x) {pdf(x, y = y0)}

marginal.y <- integrate(h.y0, lower = 0, upper = 1)
marginal.y$value


# (iv)
f.xy <- function(x, y) x*y*pdf(x, y)

integral2(f.xy, xmin = 0, xmax = 1, ymin = 0, ymax = 1)$Q



# Question 2 -------------------------------------------------------------------
X <- 0:3
Y <- 0:2
pmf <- function(x, y) {
  if (x %in% X && y %in% Y) {
    (x + y)/30
  } else {
    0
  }
}

# (i)
prob.dist <- mapply(pmf, X, rep(Y, each = length(X)))
prob.dist <- matrix(prob.dist, length(X), length(Y))
prob.dist


# (ii)
sum(prob.dist)


# (iii)
g.x <- apply(prob.dist, 1, sum)
g.x

# (iv)
h.y <- apply(prob.dist, 2, sum)
h.y

# (v)
x <- 0; y <- 1
pmf(x, y)/sum(prob.dist[, y + 1])
pmf(x, y)/h.y[y + 1]


# (vi)
E.x <- sum(X * g.x)
E.x

E.y <- sum(Y * h.y)
E.y


xy <- X * rep(Y, each = length(X))
xy <- matrix(xy, length(X), length(Y))
E.xy <- sum(xy * prob.dist)
E.xy

var.x <- sum(X^2 * g.x) - (E.x)^2
var.x

var.y <- sum(Y^2 * h.y) - (E.y)^2
var.y


a <- (X - E.x) * rep(Y - E.y, each = length(X))
a <- matrix(a, length(X), length(Y))
cov.xy <- sum(a * prob.dist)
cov.xy

E.xy - (E.x * E.y)
