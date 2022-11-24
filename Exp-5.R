# Question 1
# (a)
punif(45, min = 0, max = 60, lower.tail = FALSE)
1 - punif(45, min = 0, max = 60)

# (b)
punif(30, 0, 60) - punif(20, 0, 60)

# distribution plot
p.x <- dunif(0:60, 0, 60)
plot(0:60, p.x)


# Question 2
# (a)
dexp(3, 1/2)

# (b)
x <- seq(0, 5, by = 0.1)
p.x <- dexp(x, 1/2)
plot(x, p.x, type = "l")

# (c)
pexp(3, 1/2)

# (d)
x <- seq(0, 5, by= 0.1)
p.x <- pexp(x, 1/2)
plot(x, p.x, type = "l")

# (e)
p.x <- rexp(1000, 1/2)
plot(p.x)
hist(p.x)


# Question 3
# (a)
dgamma(3, shape = 2, rate = 1/3)
pgamma(1, shape = 2, rate = 1/3, lower.tail = FALSE)

# (b)
# qgamma(0.70, shape = 2, rate = 1/3, lower.tail = FALSE)
qgamma(0.70, shape = 2, rate = 1/3)
