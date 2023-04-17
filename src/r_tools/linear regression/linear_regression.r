data <- read.csv("data1.csv", header = TRUE, sep = ",")

x <- c("x")
y <- "y"
formula <- formula(paste(y, "~", paste(x, collapse = " + ")))

model <- lm(formula, data = data)

sum <- summary(model)

n <- nrow(data)

x_mean <- mean(data[, x])
y_mean <- mean(data[, y])

sxx <- sum((data[, x] - x_mean)^2)
syy <- sum((data[, y] - y_mean)^2)
sxy <- sum((data[, x] - x_mean) * (data[, y] - y_mean))

sse <- syy - sxy^2 / sxx
mse <- sse / (n-2)

c00 <- sum((data[, x])^2)/(n*sxx)
c11 = 1/sxx

#summary
sum
paste("Mean x", x_mean)
paste("Mean y", y_mean)
paste("Sxx ", sxx)
paste("Sxy ", sxy)
paste("Syy ", syy)
paste("Sum Square Error: ", sse)
paste("Mean Square Error: ", mse)
paste("c00: ", c00)
paste("c11: ", c11)
paste("S: ", sqrt(sse/(n-2)))


# confidence interval
predict(model, newdata = data.frame(x = c(2)), interval = "confidence", level = .99)
# prediction interval
predict(model, newdata = data.frame(x = c(2)), interval = "prediction", level = .99)
