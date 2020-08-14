Summarizing a Series of Variables
================
w203: Statistics for Data Science
8/13/2020

``` r
library(tidyverse)
```

``` r
agencies <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
launches <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')
```

# Task

With the agencies data, produce a *meaningful* summary of the following
variables:

  - The average number of launches
  - The median of the number of launches
  - The variance of the number of launches
  - A count of the unique number of agencies. (In the lecture, I wrote a
    method of accomplishing this using base tools; you can also use the
    `dplyr` function `n_distinct`)

<!-- end list -->

``` r
agencies %>%  
  summarize(
    launches_mean    = mean(count), 
    launches_median  = median(count),
    launches_var     = var(count), 
    agencies_count   = n_distinct(agency, na.rm = TRUE),
    agencies_count_2 = length(unique(agency))
  )
```

    ## # A tibble: 1 x 5
    ##   launches_mean launches_median launches_var agencies_count agencies_count_2
    ##           <dbl>           <dbl>        <dbl>          <int>            <int>
    ## 1          77.1              12       46203.             74               74

> Notice a few things that I’ve done in this code:
> 
> 1.  Each of the mutate varaibles that I’ve written starts with the
>     same variable “slug” – this this case `variable_` or `agencies_`.
>     I thought that this was a more useful variable name than `count`.
>     But, more to the point, this way there is a consistent look-up
>     (both visually and programatically) for all the variable that are
>     associate with this concenpt. If, instead, you wrote this as
>     `mean_launches` which *does* have a more natural reading aloud,
>     then the ordering of these variables might move apart when you
>     consider, say `var_launches`.
> 2.  I’ve added extra white-space after the new varaibles that I’ve
>     created so that I can align the `=` signs. This is always allowed
>     within the code style, and helps to set apart the variables that
>     you’re making from those that exist. Just compare the two blocks
>     below to see.

    agencies %>%  
      summarize(
        launches_mean = mean(count), 
        launches_median = median(count),
        launches_var = var(count), 
        agencies_count = n_distinct(agency, na.rm = TRUE),
        agencies_count_2 = length(unique(agency))
      )
    
    agencies %>%  
    summarize(
      launches_mean    = mean(count), 
      launches_median  = median(count),
      launches_var     = var(count), 
      agencies_count   = n_distinct(agency, na.rm = TRUE),
      agencies_count_2 = length(unique(agency))
    )
