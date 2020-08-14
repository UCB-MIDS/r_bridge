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

Use the magrittr pipr `%>%` and the `filter()` verb to do the following
work:

## Launches in the 1980s

Find only the launches that occurred in the 1980s

``` r
launches %>% 
  filter(launch_year >= 1980) %>% 
  filter(launch_year < 1990)
```

    ## # A tibble: 1,191 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1984… 2.45e6 1984-11-10         1984 Aria… <NA>    Spacen… AE     F         
    ##  2 1984… 2.45e6 1984-05-23         1984 Aria… <NA>    Spacen… AE     F         
    ##  3 1984… 2.45e6 1984-08-04         1984 Aria… <NA>    ECS 2   AE     F         
    ##  4 1985… 2.45e6 1985-02-08         1985 Aria… <NA>    Arabsa… AE     F         
    ##  5 1985… 2.45e6 1985-05-08         1985 Aria… <NA>    Gstar … AE     F         
    ##  6 1985… 2.45e6 1985-07-02         1985 Aria… <NA>    Giotto  AE     F         
    ##  7 1986… 2.45e6 1986-02-22         1986 Aria… <NA>    SPOT    AE     F         
    ##  8 1986… 2.45e6 1986-03-28         1986 Aria… <NA>    Gstar 2 AE     F         
    ##  9 1987… 2.45e6 1987-09-16         1987 Aria… <NA>    Aussat… AE     F         
    ## 10 1987… 2.45e6 1987-11-21         1987 Aria… <NA>    TV-SAT  AE     F         
    ## # … with 1,181 more rows, and 2 more variables: category <chr>,
    ## #   agency_type <chr>

Or, equivalently

``` r
launches %>% 
  filter(launch_year >= 1980, launch_year < 1990)
```

    ## # A tibble: 1,191 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1984… 2.45e6 1984-11-10         1984 Aria… <NA>    Spacen… AE     F         
    ##  2 1984… 2.45e6 1984-05-23         1984 Aria… <NA>    Spacen… AE     F         
    ##  3 1984… 2.45e6 1984-08-04         1984 Aria… <NA>    ECS 2   AE     F         
    ##  4 1985… 2.45e6 1985-02-08         1985 Aria… <NA>    Arabsa… AE     F         
    ##  5 1985… 2.45e6 1985-05-08         1985 Aria… <NA>    Gstar … AE     F         
    ##  6 1985… 2.45e6 1985-07-02         1985 Aria… <NA>    Giotto  AE     F         
    ##  7 1986… 2.45e6 1986-02-22         1986 Aria… <NA>    SPOT    AE     F         
    ##  8 1986… 2.45e6 1986-03-28         1986 Aria… <NA>    Gstar 2 AE     F         
    ##  9 1987… 2.45e6 1987-09-16         1987 Aria… <NA>    Aussat… AE     F         
    ## 10 1987… 2.45e6 1987-11-21         1987 Aria… <NA>    TV-SAT  AE     F         
    ## # … with 1,181 more rows, and 2 more variables: category <chr>,
    ## #   agency_type <chr>

## Launches by France

Find only the launches that were conducted by France (`state_code ==
"F"` )

``` r
launches %>% 
  filter(state_code == "F")
```

    ## # A tibble: 291 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1984… 2.45e6 1984-11-10         1984 Aria… <NA>    Spacen… AE     F         
    ##  2 1984… 2.45e6 1984-05-23         1984 Aria… <NA>    Spacen… AE     F         
    ##  3 1984… 2.45e6 1984-08-04         1984 Aria… <NA>    ECS 2   AE     F         
    ##  4 1985… 2.45e6 1985-02-08         1985 Aria… <NA>    Arabsa… AE     F         
    ##  5 1985… 2.45e6 1985-05-08         1985 Aria… <NA>    Gstar … AE     F         
    ##  6 1985… 2.45e6 1985-07-02         1985 Aria… <NA>    Giotto  AE     F         
    ##  7 1986… 2.45e6 1986-02-22         1986 Aria… <NA>    SPOT    AE     F         
    ##  8 1986… 2.45e6 1986-03-28         1986 Aria… <NA>    Gstar 2 AE     F         
    ##  9 1987… 2.45e6 1987-09-16         1987 Aria… <NA>    Aussat… AE     F         
    ## 10 1987… 2.45e6 1987-11-21         1987 Aria… <NA>    TV-SAT  AE     F         
    ## # … with 281 more rows, and 2 more variables: category <chr>, agency_type <chr>

## Launches by France in the 1980s

Find only the launches by France that were conducted in the 1980s

``` r
launches %>% 
  filter(launch_year >= 1980, launch_year < 1990, state_code == "F")
```

    ## # A tibble: 26 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1984… 2.45e6 1984-11-10         1984 Aria… <NA>    Spacen… AE     F         
    ##  2 1984… 2.45e6 1984-05-23         1984 Aria… <NA>    Spacen… AE     F         
    ##  3 1984… 2.45e6 1984-08-04         1984 Aria… <NA>    ECS 2   AE     F         
    ##  4 1985… 2.45e6 1985-02-08         1985 Aria… <NA>    Arabsa… AE     F         
    ##  5 1985… 2.45e6 1985-05-08         1985 Aria… <NA>    Gstar … AE     F         
    ##  6 1985… 2.45e6 1985-07-02         1985 Aria… <NA>    Giotto  AE     F         
    ##  7 1986… 2.45e6 1986-02-22         1986 Aria… <NA>    SPOT    AE     F         
    ##  8 1986… 2.45e6 1986-03-28         1986 Aria… <NA>    Gstar 2 AE     F         
    ##  9 1987… 2.45e6 1987-09-16         1987 Aria… <NA>    Aussat… AE     F         
    ## 10 1987… 2.45e6 1987-11-21         1987 Aria… <NA>    TV-SAT  AE     F         
    ## # … with 16 more rows, and 2 more variables: category <chr>, agency_type <chr>

## Launches by France or Russia in the 1980s

Find launches in the 1980s by either France or the Soviet Union

``` r
launches %>% 
  filter(launch_year >= 1980, launch_year < 1990, state_code %in% c("F", "SU"))
```

    ## # A tibble: 979 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1984… 2.45e6 1984-11-10         1984 Aria… <NA>    Spacen… AE     F         
    ##  2 1984… 2.45e6 1984-05-23         1984 Aria… <NA>    Spacen… AE     F         
    ##  3 1984… 2.45e6 1984-08-04         1984 Aria… <NA>    ECS 2   AE     F         
    ##  4 1985… 2.45e6 1985-02-08         1985 Aria… <NA>    Arabsa… AE     F         
    ##  5 1985… 2.45e6 1985-05-08         1985 Aria… <NA>    Gstar … AE     F         
    ##  6 1985… 2.45e6 1985-07-02         1985 Aria… <NA>    Giotto  AE     F         
    ##  7 1986… 2.45e6 1986-02-22         1986 Aria… <NA>    SPOT    AE     F         
    ##  8 1986… 2.45e6 1986-03-28         1986 Aria… <NA>    Gstar 2 AE     F         
    ##  9 1987… 2.45e6 1987-09-16         1987 Aria… <NA>    Aussat… AE     F         
    ## 10 1987… 2.45e6 1987-11-21         1987 Aria… <NA>    TV-SAT  AE     F         
    ## # … with 969 more rows, and 2 more variables: category <chr>, agency_type <chr>
