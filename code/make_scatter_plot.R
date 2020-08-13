library(tidyverse)
library(ggplot2)


## Load data: this should just work
squirrel_subset <- read_csv('./r_bridge/code/squirrels_subset.csv')

## Create a basic plot of the observations on the lat and long axis

ggplot(data = squirrel_subset) +
  aes(x = lat, y = long) +
  geom_point()

## Does this look like Central Park?


## Task 1: Color by age

## - Now, write code that will modify the plot so that it is colored by age

## Task 2: Make Every Point Blue

## - Now, write code that will make every point blue, not colored by age.
## - Notice that now this choice isn't an attribute of the data. Where
##   does this mean that the `color` argument should go?

## Task 3: Color by the Fur Color

## - Now, write code that will color the points by the variable `primary_fur_color`.
## - Notice that this now *is* an attribute of the data. So, where should the
##  `color` argument go?

## Task 4: Put onto non-euclidian space

## - If you think carefully about this, we're mapping the geographic coordinate
##   system onto the euclidian coordinate system. This isn't a _huge_ deal in this
##   case because we're only covering central park. But, what's right is right...

## - ggplot has the ability to map onto the geographic coordinate system using the
##   additional function `coord_quickmap()` (which is an approximation) or `coord_map()`
##   which is not an approximation

## - Given what you understand about the layering system that ggplot uses, can
##   you add on this new layer that is the `coord_quickmap()` coordiante system?
## - If so, how much does it change the plot?
