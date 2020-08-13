Interacting with the IDE Solutions
================
w203: Statistics for Data Science
8/13/2020

``` r
## Welcome! You've made it over to the IDE.

## Any line that starts with one or more `#` will be commented out.
## This means that if you run that line, nothing will actually occur in the
## interpretor. 

## To run this code below you can do the following:
## - If you are on a Mac, on the line that you want to run you can press `command+return`
##   which means to hold command and then press return.
## - If you are on a Windows or Linux machine, then you can run that line by pressing `alt+return`
##   which means to hold the alt key and press return.

## When you run the first line one of two things might happen:
## 1. You might get an error because you haven't installed that package. If this happens,
##    look near the top of your Rstudio screen -- there should be a helper that asks if
##    you want to install this library. You do and can click "install".
## 2. If you've already installed that library, then it should load the package, which
##    you will see in the console below. 


library(ggplot2)

## Now, if you want to create some data, you can either
##  - Run the first line where you are creating the object `d` that is a data.frame; or,
##  - Highlight the region that you want to run and then run that region (using command+return
##    or alt+return). 


d <- data.frame(
  id = 1:1000, 
  x  = rnorm(1000, mean = 0, sd = 1), 
  y  = rnorm(1000, mean = 10, sd = 2),
  color = sample(c('red', 'blue'), size = 1000, replace = TRUE)
)

## To produce the plot below, run these lines. Do you need to run all the lines?
## Or, can you run just the first? Why do you think the IDE chooses to behave this way?

ggplot(data = d, aes(x=x, y=y)) + 
  geom_point()
```

![](interacting_with_the_IDE_solutions_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
## Finally, you can run code that doesn't have any visible side effects.
## If you run the line below, what do you see in your console? Just that the line has run?
## But, now look into the `Environment` tab that is visible to you -- is there a record
## of this `mod` that you just created?

mod <- lm(y ~ x, data = d)

## The model that you created is stored in the working memory and can be called by
## naming the object.

mod
```

    ## 
    ## Call:
    ## lm(formula = y ~ x, data = d)
    ## 
    ## Coefficients:
    ## (Intercept)            x  
    ##     9.98360     -0.02651

``` r
## If you want to use the summary function on the model, you can and you will see
## a different return printed to the console. 

summary(mod)
```

    ## 
    ## Call:
    ## lm(formula = y ~ x, data = d)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -7.3850 -1.3606 -0.0425  1.3237  5.8412 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  9.98360    0.06521 153.093   <2e-16 ***
    ## x           -0.02651    0.06533  -0.406    0.685    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 2.06 on 998 degrees of freedom
    ## Multiple R-squared:  0.000165,   Adjusted R-squared:  -0.0008369 
    ## F-statistic: 0.1647 on 1 and 998 DF,  p-value: 0.685
