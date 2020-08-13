# population average is 100
# population sd is 20

rnorm(n = 42, mean = 100, sd = 20)

# 100: 
# pop: average 42, 
# var: 100

first_draw <- rnorm(n = 100, mean = 42, sd = 10)
second_draw <- rnorm(n = 100, mean = 42, sd = 10)

mean(first_draw == second_draw)

draws <- runif(n = 1000, min = -1, max = 9)
hist(draws, col = 'black')



urn <- c('red_ball', 'blue_ball', 'green_ball')
sample(x = urn, size = 3, replace = FALSE)

lett <- c('a', 'b', 'c', 'd', 'e', 'f')
sample(lett)

