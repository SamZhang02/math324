# script that performs linear regression given a data frame
# and a list of variables to use as predictors

data <- read.csv("data.csv")

predictors <- c("x1", "x2")
response <- "y"

model <- lm(response ~ ., data = data[, c(predictors, response)])

summary(model)
