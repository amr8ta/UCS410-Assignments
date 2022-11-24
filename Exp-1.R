# Question 1 -----------------------------------------------------
c <- c(5, 10, 15, 20, 25, 30)
cat('The maximum element in vector c is', max(c))
cat('The minimum element in vector c is', min(c))


# Question 2 -----------------------------------------------------
v <- as.numeric(readline(prompt = "Enter a number: "))

if (v < 0) {
  print('Error: negative integer is invalid')
} else {
  factorial <- 1
  
  if (v == 0) {
    cat('Factorial of', v, 'is: ', factorial)
  } else {
    for (i in 2:v) {
      factorial <- factorial * i
    }
    cat('Factorial of', v, 'is: ', factorial)
  }
}


# Question 3 -----------------------------------------------------
n <- as.numeric(readline(prompt = "Enter a number: "))

fibonacci <- c()
a <- 1
b <- 1

if (n >= 1) {
  fibonacci <- append(fibonacci, a)
}

if (n >= 2) {
  fibonacci <- append(fibonacci, b)
}

if (n >= 3) {
  for (i in 3:n) {
    c <- a + b
    fibonacci <- append(fibonacci, c)
    a <- b
    b <- c
  }
}

print(fibonacci)


# Question 4 -----------------------------------------------------
print('Enter operands a and b')
a <- as.numeric(readline(prompt = "a = "))
b <- as.numeric(readline(prompt = "b = "))

operator <- readline(prompt = "Enter operator: ")

if (operator == "+") {
  print(a + b)
}
if (operator == "-") {
  print(a - b)
}
if (operator == "*") {
  print(a * b)
}
if (operator == "/") {
  print(a / b)
}


# Question 5 -----------------------------------------------------
x <- seq(-pi, pi, 0.1)
y <- sin(x)
plot(x, y)
plot(x, y, type = 'l')
plot(x, y, type = 'o')
plot(x, y, type = 's')
plot(x, y, type = 'h')
plot(x, y, type = 'l', xlab = 'x', ylab = 'sin(x)', main = 'Sine function')



profit <- c(2, 4, 7, 5)
labels <- c("Q1", "Q2", "Q3", "Q4")

barplot(profit)

barplot(profit,
        names = labels,
        xlab = "Quarter",
        ylab = "Profits", 
        main = "Quartery Profit Report")

barplot(profit, axes = F)
barplot(profit, horiz = T)
barplot(profit, col = c("#DDDDFF", "#0000FF"), border = "#0000FF")

barwidth <- c(2, 1, 1.5, 3)
barplot(profit, width = barwidth)
barplot(profit, space = 5)


pie(profit)
pie(profit, 
    labels = labels, 
    main = "Quarterly Profit Report")
