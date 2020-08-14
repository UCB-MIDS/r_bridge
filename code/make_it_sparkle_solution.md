make\_it\_sparkle.Rmd
================
w203: Statistics for Data Science

``` r
library(tidyverse)
library(ggplot2)
# install.packages('patchwork')
library(patchwork)

theme_set(theme_minimal())
knitr::opts_chunk$set(dpi = 200)
```

``` r
squirrel_subset <- read.csv('squirrels_subset.csv')
squirrel_subset <- filter(squirrel_subset, !is.na(primary_fur_color))

squirrel_subset <- squirrel_subset %>%
  mutate(date_f = as.Date.character(date, format = '%m%d%Y'))
```

# Coding Task

Suppose that you want to communicate to someone who has less context
with the data. Set the `labs()` argument to include

  - A title
  - A subtitle
  - Descriptive Labels for the axes
  - A label for what the colors mean.

Each of the labels should be in **plain spoken language** and should be
in sentence case:

  - The first letter of the first work should be capitalized
  - The rest of the letters should *not* be capitalized
  - Everything should be a work that you can speak aloud – i.e. **not**
    a variable name.

<!-- end list -->

``` r
squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE) + 
  labs(
    title = 'There are a lot of grey squirrels',
    subtitle = 'But, people are collecting data in later days',
    x = 'Date of observation', 
    y = 'Count of squirrels', 
    color = 'Primary Fur Color'
  )
```

    ## `summarise()` regrouping output by 'date_f' (override with `.groups` argument)

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

![](make_it_sparkle_solution_files/figure-gfm/coding%20task-1.png)<!-- -->
