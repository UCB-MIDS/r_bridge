
``` r
library(tidyverse)
library(ggplot2)
theme_set(theme_minimal())
knitr::opts_chunk$set(dpi = 200)
```

This output is best viewed over in github because we cannot render
images into the ISVC.

# Load data: this should just work

``` r
squirrel_subset <- read_csv('./squirrels_subset.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   long = col_double(),
    ##   lat = col_double(),
    ##   hectare = col_character(),
    ##   date = col_double(),
    ##   age = col_character(),
    ##   primary_fur_color = col_character()
    ## )

## Create a basic plot of the observations on the lat and long axis

``` r
ggplot(data = squirrel_subset) +
  aes(x = long, y = lat) +
  geom_point()
```

![](make_scatter_plots_solution_files/figure-gfm/basic%20plot-1.png)<!-- -->

> This looks like central park to me\!

# Task 1: Color by age

Write code that will modify the plot so that it is colored by age.

``` r
ggplot(data = squirrel_subset) +
  aes(x = long, y = lat, color = age) +
  geom_point()
```

![](make_scatter_plots_solution_files/figure-gfm/age%20plot-1.png)<!-- -->

# Task 2: Make Every Point Blue

  - Now, write code that will make every point blue, not colored by age.
  - Notice that now this choice isn’t an attribute of the data.
  - Where does this mean that the `color` argument should go?

<!-- end list -->

``` r
ggplot(data = squirrel_subset) +
  aes(x = long, y = lat) +
  geom_point(color = 'blue')
```

![](make_scatter_plots_solution_files/figure-gfm/feeling%20blue-1.png)<!-- -->

# Task 3: Color by the Fur Color

  - Now, write code that will color the points by the variable
    `primary_fur_color`.
  - Notice that this now *is* an attribute of the data. So, where should
    the `color` argument go?

<!-- end list -->

``` r
ggplot(data = squirrel_subset) +
  aes(x = long, y = lat, color = primary_fur_color) +
  geom_point()
```

![](make_scatter_plots_solution_files/figure-gfm/fur%20color%20plot-1.png)<!-- -->

# Task 4: Put onto non-euclidian space

  - If you think carefully about this, we’re mapping the geographic
    coordinate system onto the euclidian coordinate system. This isn’t a
    *huge* deal in this case because we’re only covering central park.
    But, what’s right is right…

  - ggplot has the ability to map onto the geographic coordinate system
    using the additional function `coord_quickmap()` (which is an
    approximation) or `coord_map()` which is not an approximation

  - Given what you understand about the layering system that ggplot
    uses, can you add on this new layer that is the `coord_quickmap()`
    coordiante system?

  - If so, how much does it change the plot?

<!-- end list -->

``` r
ggplot(data = squirrel_subset) +
  aes(x = long, y = lat, color = primary_fur_color) +
  coord_quickmap() +
  geom_point()
```

![](make_scatter_plots_solution_files/figure-gfm/non%20euclidian%20space-1.png)<!-- -->
