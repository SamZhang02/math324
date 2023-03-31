# script that performs linear regression given a data frame
# and a list of variables to use as predictors

data <- read.csv("data.csv", header = TRUE, sep = ",")

predictors <- c("x1", "x2")
response <- "y"
formula <- formula(paste(response, "~", paste(predictors, collapse = " + ")))

model <- lm(formula, data = subset(data[, c(predictors, response)]))

summary(model)
