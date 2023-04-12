
Call:
lm(formula = formula, data = subset(data[, c(predictors, response)]))

Residuals:
   Min     1Q Median     3Q    Max 
  -2.2   -1.2    0.3    0.8    1.8 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  10.2000     0.6633  15.377 3.18e-07 ***
x1            4.0000     0.4690   8.528 2.75e-05 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.483 on 8 degrees of freedom
Multiple R-squared:  0.9009,	Adjusted R-squared:  0.8885 
F-statistic: 72.73 on 1 and 8 DF,  p-value: 2.749e-05

