Heading to the Little Farm
================
w203: Statistics for Data Science

# The Little Farm

Just around the corner from campus in Berkeley is the Tilden “Little
Farm” its a sort of hobby farm that has cows, goats, chickens, sheep,
and a small menagerie of other cute animals. I think that idea is that
kids can see animals – but I’ve also got to admit that it is kind of
weird to have a tiny farm in the middle of the neighborhood.

## Create Farm Data

Let’s use all the methods that you’ve just been working on to produce a
dataset that represents the farm. Using methods that you’re familiar
with, create the following dataset.

  - A column that ranges from 1 - 300 called “ID” that is an ID for the
    animal.
  - A column that has the type of animal that is being recorded:
      - There are 10 cows
      - There are 50 sheep
      - There are 40 goats
      - There are 70 chickens
      - There are 130 rabbits
  - A column that describes whether that animal belongs in the petting
    zoo
  - A column that describes the weight of the animals:
      - Cows weight are normally distributed, with a mean of 1000kg and
        a sd of 100kg
      - Sheep are normally distributed, with a mean of 100kg and a sd of
        2 kg
      - Goats are normally distributed, with a mean of 40kg and a sd of
        2kg
      - Chickens all weigh .2 kg
      - Rabbits don’t stand still long enough to be weighted, so there
        is no data
  - A column that described how much feed that animal needs – this is
    animal specific, and depends on how much the animal weighs.
      - A cow needs 3% of its body weight each day to stay alive
      - A sheep needs 2% of its body weight each day to stay alive
      - A goat needs 7% of its body weight each day to stay alive
      - A chicken needs 2% of its body weight each day to stay alive

For this activity, you cannot use the `tidyverse`.

``` r
ID <- 1:300
animal <- c(rep('cow', 10), rep('sheep', 50), rep('goat', 40), rep('chicken', 70), rep('rabbit', 130))
petting_zoo <- rep('no', 300)
petting_zoo[animal == 'rabbit'] <- 'yes'

weight <- rep(NA, 300)
weight[animal == 'cow']     <- rnorm(n = 10, mean = 1000, sd = 100)
weight[animal == 'sheep']   <- rnorm(n = 50, mean = 100, sd = 2)
weight[animal == 'goat']    <- rnorm(n = 40, mean = 40, sd = 2)
weight[animal == 'chicken'] <- .2
weight[animal == 'rabbit']  <- NA

feed <- rep(NA, 300)

feed[animal == 'cow']     <- weight[animal == 'cow'] * .03   
feed[animal == 'sheep']   <- weight[animal == 'sheep'] *.02  
feed[animal == 'goat']    <- weight[animal == 'goat'] * .07
feed[animal == 'chicken'] <- weight[animal == 'chicken'] * .02
feed[animal == 'rabbit']  <- NA
```
