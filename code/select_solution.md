Select
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

  - From the launches data, `select()` only the columns that are related
    to characteristics about the country

<!-- end list -->

``` r
launches %>% 
  select(agency, state_code, agency_type)
```

    ## # A tibble: 5,726 x 3
    ##    agency state_code agency_type
    ##    <chr>  <chr>      <chr>      
    ##  1 US     US         state      
    ##  2 US     US         state      
    ##  3 US     US         state      
    ##  4 US     US         state      
    ##  5 US     US         state      
    ##  6 US     US         state      
    ##  7 US     US         state      
    ##  8 US     US         state      
    ##  9 US     US         state      
    ## 10 US     US         state      
    ## # … with 5,716 more rows

  - From the launches data, `select()` only the columns that are related
    to time

<!-- end list -->

``` r
launches %>% 
  select(tag, JD, launch_date, launch_year)
```

    ## # A tibble: 5,726 x 4
    ##    tag            JD launch_date launch_year
    ##    <chr>       <dbl> <date>            <dbl>
    ##  1 1967-065 2439671. 1967-06-29         1967
    ##  2 1967-080 2439726. 1967-08-23         1967
    ##  3 1967-096 2439775. 1967-10-11         1967
    ##  4 1968-042 2440000. 1968-05-23         1968
    ##  5 1968-092 2440153. 1968-10-23         1968
    ##  6 1969-062 2440426. 1969-07-23         1969
    ##  7 1970-012 2440629. 1970-02-11         1970
    ##  8 1970-070 2440833. 1970-09-03         1970
    ##  9 1971-012 2441000. 1971-02-17         1971
    ## 10 1971-054 2441111. 1971-06-08         1971
    ## # … with 5,716 more rows
