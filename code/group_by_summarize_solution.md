Split, Apply, Combine
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

  - Using the `launches` data, count the total number of launches per
    `launch_year`, grouped by `state_code`.

<!-- end list -->

``` r
launches %>%  
  group_by(state_code, launch_year) %>%  
  summarise(launches_total = n()) 
```

    ## `summarise()` regrouping output by 'state_code' (override with `.groups` argument)

    ## # A tibble: 338 x 3
    ## # Groups:   state_code [17]
    ##    state_code launch_year launches_total
    ##    <chr>            <dbl>          <int>
    ##  1 BR                1997              1
    ##  2 BR                1999              1
    ##  3 CN                1970              1
    ##  4 CN                1971              1
    ##  5 CN                1973              1
    ##  6 CN                1974              2
    ##  7 CN                1975              3
    ##  8 CN                1976              3
    ##  9 CN                1978              1
    ## 10 CN                1979              1
    ## # … with 328 more rows

> Roger that.

  - Then, using `arrange` answer the question: which year was the
    busiest for any state?

<!-- end list -->

``` r
launches %>%  
  group_by(state_code, launch_year) %>%  
  summarise(launches_total = n()) %>%  
  arrange(desc(launches_total))
```

    ## `summarise()` regrouping output by 'state_code' (override with `.groups` argument)

    ## # A tibble: 338 x 3
    ## # Groups:   state_code [17]
    ##    state_code launch_year launches_total
    ##    <chr>            <dbl>          <int>
    ##  1 SU                1982            108
    ##  2 SU                1977            102
    ##  3 SU                1976            100
    ##  4 SU                1981            100
    ##  5 SU                1983            100
    ##  6 SU                1985            100
    ##  7 SU                1984             97
    ##  8 SU                1987             96
    ##  9 SU                1986             94
    ## 10 SU                1988             94
    ## # … with 328 more rows

> It looks like the busiest year for any state was 1982 in the Soviet
> Union, followed very closely by other years right around the same time
> for the soviet union.

  - Then, using `filter` answer the question: what was the busiest year
    for the US?

<!-- end list -->

``` r
launches %>%  
  group_by(state_code, launch_year) %>%  
  summarise(launches_total = n()) %>%  
  filter(state_code == 'US') %>%  
  arrange(desc(launches_total))
```

    ## `summarise()` regrouping output by 'state_code' (override with `.groups` argument)

    ## # A tibble: 62 x 3
    ## # Groups:   state_code [1]
    ##    state_code launch_year launches_total
    ##    <chr>            <dbl>          <int>
    ##  1 US                1966             77
    ##  2 US                1965             70
    ##  3 US                1964             63
    ##  4 US                1967             61
    ##  5 US                1962             59
    ##  6 US                1968             48
    ##  7 US                1963             46
    ##  8 US                1961             41
    ##  9 US                1969             41
    ## 10 US                1997             38
    ## # … with 52 more rows

> The busiest year for the US was 1966. And, although it is a different
> decade than the busiest year for the Soviet Union, you can see that
> when a country makes an investment in their space exploration program,
> they seem to have pretty bursty output for launches.

  - Then, using another variable summary, answer the question: which
    country has the most variance in the per-year launches?

This is a little tricky, because I’m not asking you to include the
launch year in the *final* grouping, instead, you’re going to summarize
*across* launch years. To do this, start as we have, but then part way
through, drop the grouping by year. To do this, declare a new
`group_by()` call, and then proceed with your summary.

``` r
launches %>%  
  group_by(state_code, launch_year) %>%  
  summarise(launches_total = n()) %>%  
  group_by(state_code) %>%  
  summarise(launches_variance = var(launches_total, na.rm = T)) %>% 
  arrange(desc(launches_variance))
```

    ## `summarise()` regrouping output by 'state_code' (override with `.groups` argument)

    ## `summarise()` ungrouping output (override with `.groups` argument)

    ## # A tibble: 17 x 2
    ##    state_code launches_variance
    ##    <chr>                  <dbl>
    ##  1 SU                  1151.   
    ##  2 US                   208.   
    ##  3 RU                    97.6  
    ##  4 CN                    47.3  
    ##  5 F                     14.2  
    ##  6 IN                     2.42 
    ##  7 J                      1.65 
    ##  8 IR                     0.667
    ##  9 KP                     0.25 
    ## 10 I                      0.238
    ## 11 I-ESA                  0.233
    ## 12 BR                     0    
    ## 13 CYM                    0    
    ## 14 I-ELDO                 0    
    ## 15 IL                     0    
    ## 16 KR                     0    
    ## 17 UK                     0

Think about how hard this would have been if you were writing this in
some *other* idiom. It isn’t that this was necessariliy easy, but that
it is possible. And, it is legible while you’re doing it\! Neat.
