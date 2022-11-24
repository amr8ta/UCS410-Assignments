# Question 1
pbinom(9, 12, 1/6) - pbinom(6, 12, 1/6)
sum(dbinom(7:9, 12, 1/6))


# Question 2
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)

x <- seq(0, 100, by = 0.5)
y <- dnorm(x, mean = 72, sd = 15.2)
plot(x, y, type = "l")


# Question 3
dpois(0, lambda = 5)
ppois(0, lambda = 5)

sum(dpois(48:50, lambda = 50))
ppois(50, lambda = 50) - ppois(47, lambda = 50)


# Question 4
dbinom(3, size = 5, prob = 17/250)


# Question 5
p.x <- dbinom(0:31, 31, 0.447)
print(p.x)

# probability mass function
plot(0:31, p.x)

# cumulative distribution function
plot(0:31, pbinom(0:31, 31, 0.447))


# mean, var, std of X
mean.x <- weighted.mean(0:31, p.x)
print(mean.x)

var.x <- weighted.mean((0:31)^2, p.x) - (mean.x)^2
print(var.x)

sd.x <- sqrt(var.x)
print(sd.x)


