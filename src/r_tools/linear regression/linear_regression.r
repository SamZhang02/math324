data <- read.csv("data.csv", header = TRUE, sep = ",")

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

#summary
sum
paste("Mean x", x_mean)
paste("Mean y", y_mean)
paste("Sxx ", sxx)
paste("Sxy ", sxy)
paste("Syy ", syy)
paste("Sum Square Error: ", sse)
paste("Mean Square Error: ", mse)

# enable for predictions
predict(model, newdata = data.frame(x = c(2)), interval = "prediction", level = .99)
