# Question 1
n <- 100
X <- rt(n = n, df = n - 1)
hist(X, prob = T)
curve(dt(x, n - 1), col = "blue", add = T)

# Question 2
X1 <- rchisq(n = 100, df = 2)
X2 <- rchisq(n = 100, df = 10)
X3 <- rchisq(n = 100, df = 25)

hist(X3, col = rgb(0, 1, 0, 0.5))
hist(X2, col = rgb(0, 0, 1, 0.5), add = T)
hist(X1, col = rgb(1, 0, 0, 0.5), add = T)


# Question 3
x <- seq(-6, 6, length.out = 100)

dist1 <- dt(x, df = 1)
dist2 <- dt(x, df = 4)   
dist3 <- dt(x, df = 10)
dist4 <- dt(x, df = 30)

plot(x, dist4, type = "l")
lines(x, dist3, col="red")
lines(x, dist2, col = "blue")
lines(x, dist1, col = "green")


# Question 4
# (i)
qf(0.95, df1 = 10, df2 = 20)

# (ii)
pf(1.5, 10, 20)
pf(1.5, 10, 20, lower.tail = FALSE)

# (iii)
q <- c(0.25, 0.5, 0.75, 0.999)
qf(q, 10, 20)

# (iv)
X <- rf(1000, 10, 20)
hist(X)
