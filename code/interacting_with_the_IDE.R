library(ggplot2)

d <- data.frame(
  id = 1:1000, 
  x  = rnorm(1000, mean = 0, sd = 1), 
  y  = rnorm(1000, mean = 10, sd = 2),
  color = sample(c('red', 'blue'), size = 1000, replace = TRUE)
)

ggplot(data = d, aes(x=x, y=y)) + 
  geom_point()

mod <- lm(y ~ x, data = d)
