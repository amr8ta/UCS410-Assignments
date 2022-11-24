# Question 1 -----------------------------------------------------
# (a)
chest <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))
s <- sample(x = chest, size = 10, replace = FALSE)
s
table(s)

# (b)
surgery <- c("success", "failure")
sample(x = surgery, size = 10, replace = TRUE, prob = c(0.9, 0.1))


# Question 2 -----------------------------------------------------
pbirthday(n = 23, classes = 365, coincident = 2)
qbirthday(prob = 0.5, classes = 365, coincident = 2)


#Question 3 -----------------------------------------------------
bayesTheorem <- function(PA, PB, PBA) {
  PAB = (PBA * PA)/PB
  return (PAB)
}

Pcloudy <- 0.4
Prain <- 0.2
Pcloudy_rain <- 0.85

bayesTheorem(Prain, Pcloudy, Pcloudy_rain)


# Question 4 -----------------------------------------------------
library(datasets)
data("iris")

# (a)
head(x = iris, 5)
#tail(x = iris)

# (b)
dim(iris)
str(iris)

## Sepal Length
sepal.length <- iris[, "Sepal.Length"]
boxplot(sepal.length)
boxplot(formula = Sepal.Length ~ Species, data = iris)

range(sepal.length)
mean(sepal.length)
median(sepal.length)
quantile(sepal.length, 0.25)
quantile(sepal.length, 0.75)
IQR(sepal.length)
sd(sepal.length)
var(sepal.length)


AttributeAnalysis <- function(data) {
  cat('Range: ', range(data), '\n')
  cat('Mean: ', mean(data), '\n')
  cat('Median: ', median(data), '\n')
  print(quantile(data))
  cat('Q1: ', quantile(data, 0.25), '\n')
  cat('Q2: ', quantile(data, 0.75), '\n')
  cat('IQR: ', IQR(data), '\n')
  cat('Standard deviation: ', sd(data), '\n')
  cat('Variance: ', var(data), '\n')
}


## Sepal Width
sepal.width <- iris[, "Sepal.Width"]
boxplot(sepal.width)
boxplot(formula = Sepal.Width ~ Species, data = iris)
AttributeAnalysis(sepal.width)


## Petal Length
petal.length <- iris[, "Petal.Length"]
boxplot(petal.length)
boxplot(formula = Petal.Length ~ Species, data = iris)
AttributeAnalysis(petal.length)


## Petal Width
petal.width <- iris[, "Petal.Width"]
boxplot(petal.width)
boxplot(formula = Petal.Width ~ Species, data = iris)
AttributeAnalysis(petal.width)


# (i)
summary(iris)


# Question 5 -----------------------------------------------------
calc_mode <- function(x) {
  mode <- names(sort(table(x), decreasing = TRUE)[1])
  return (as.numeric(mode))
}

x <- c(1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 4, 5)
calc_mode(x)