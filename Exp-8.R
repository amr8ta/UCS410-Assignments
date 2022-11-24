# (a)
data <- read.csv("data/Clt-data.csv")


# (b)
nrow(data)
head(data, 10)


# (c)
mu <- mean(data$Wall.Thickness)
mu
hist(data$Wall.Thickness)


# (d)
abline(v = mu, col = "red", lwd = 2)


##
plotSample <- function(size = 10) {
    x.bars <- c()
    for(i in 1:10000) {
        s <- sample(data$Wall.Thickness, size)
        x.bar <- mean(s)
        x.bars <- c(x.bars, x.bar)
    }
    
    hist(x.bars, prob = T)
    # abline(v = mean(x.bars), col = "blue")
    lines(density(x.bars), lwd = 1.5, col = "blue")
    
    mu <- mean(x.bars)
    std <- sd(x.bars)
    cat("Mean: ", mu, "\n")
    cat("Standard deviation: ", std)
    
    if(std > 0) {
        curve(dnorm(x, mean = mu, sd = std),
              lwd = 1.5, col = "red",
              add = T)
    }
}

#(a)
plotSample(size = 10)

# (b)
plotSample(size = 50)
plotSample(size = 500)
plotSample(size = 9000)

