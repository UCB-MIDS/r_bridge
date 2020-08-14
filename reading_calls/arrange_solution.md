Arrange
================
w203: Statistics for Data Science
8/13/2020

``` r
library(tidyverse)
```

``` r
agencies <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   agency = col_character(),
    ##   count = col_double(),
    ##   ucode = col_character(),
    ##   state_code = col_character(),
    ##   type = col_character(),
    ##   class = col_character(),
    ##   tstart = col_character(),
    ##   tstop = col_character(),
    ##   short_name = col_character(),
    ##   name = col_character(),
    ##   location = col_character(),
    ##   longitude = col_character(),
    ##   latitude = col_character(),
    ##   error = col_character(),
    ##   parent = col_character(),
    ##   short_english_name = col_character(),
    ##   english_name = col_character(),
    ##   unicode_name = col_character(),
    ##   agency_type = col_character()
    ## )

``` r
launches <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   tag = col_character(),
    ##   JD = col_double(),
    ##   launch_date = col_date(format = ""),
    ##   launch_year = col_double(),
    ##   type = col_character(),
    ##   variant = col_character(),
    ##   mission = col_character(),
    ##   agency = col_character(),
    ##   state_code = col_character(),
    ##   category = col_character(),
    ##   agency_type = col_character()
    ## )

# Task

Using the `launches` data, the `arrange()` verb, and the `head()` verb:

  - Print the earliest launches

<!-- end list -->

``` r
launches %>% 
  arrange(launch_date) %>% 
  head()
```

    ## # A tibble: 6 x 11
    ##   tag       JD launch_date launch_year type  variant mission agency state_code
    ##   <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ## 1 1957… 2.44e6 1957-10-04         1957 Sput… <NA>    PS-1    <NA>   SU        
    ## 2 1957… 2.44e6 1957-11-03         1957 Sput… <NA>    PS-2    <NA>   SU        
    ## 3 1957… 2.44e6 1957-12-06         1957 Vang… <NA>    Vangua… US     US        
    ## 4 1958… 2.44e6 1958-02-01         1958 Jupi… JunoI   Explor… US     US        
    ## 5 1958… 2.44e6 1958-02-05         1958 Vang… <NA>    Vangua… US     US        
    ## 6 1958… 2.44e6 1958-03-05         1958 Jupi… JunoI   Explor… US     US        
    ## # … with 2 more variables: category <chr>, agency_type <chr>

  - Still using the head verb, use the `desec()` adverb to print the
    *most recent* launches

<!-- end list -->

``` r
launches %>% 
  arrange(desc(launch_date)) %>% 
  head()
```

    ## # A tibble: 6 x 11
    ##   tag       JD launch_date launch_year type  variant mission agency state_code
    ##   <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ## 1 2018… 2.79e6 2918-10-11         2018 Soyu… <NA>    Soyuz … RU     RU        
    ## 2 2018… 2.46e6 2018-10-17         2018 Atla… C       AEHF 4  ULAL   US        
    ## 3 2018… 2.46e6 2018-10-15         2018 Chan… G2      Beidou… CN     CN        
    ## 4 2018… 2.46e6 2018-10-08         2018 Chan… <NA>    YG-32-… CN     CN        
    ## 5 2018… 2.46e6 2018-10-08         2018 Falc… FT5     SAOCOM… SPX    US        
    ## 6 2018… 2.46e6 2018-09-29         2018 Kuai… <NA>    Centis… CN     CN        
    ## # … with 2 more variables: category <chr>, agency_type <chr>

Adding in the `state_code` variable,

  - Arrange the data so that it is sorted first by `launch_year` and
    then by `state_code`

<!-- end list -->

``` r
launches %>% 
  arrange(launch_year, state_code)
```

    ## # A tibble: 5,726 x 11
    ##    tag       JD launch_date launch_year type  variant mission agency state_code
    ##    <chr>  <dbl> <date>            <dbl> <chr> <chr>   <chr>   <chr>  <chr>     
    ##  1 1957… 2.44e6 1957-10-04         1957 Sput… <NA>    PS-1    <NA>   SU        
    ##  2 1957… 2.44e6 1957-11-03         1957 Sput… <NA>    PS-2    <NA>   SU        
    ##  3 1957… 2.44e6 1957-12-06         1957 Vang… <NA>    Vangua… US     US        
    ##  4 1958… 2.44e6 1958-05-15         1958 Sput… <NA>    D-1 No… <NA>   SU        
    ##  5 1958… 2.44e6 1958-04-27         1958 Sput… <NA>    D-1 No… <NA>   SU        
    ##  6 1958… 2.44e6 1958-09-23         1958 Vost… <NA>    E-1 No… <NA>   SU        
    ##  7 1958… 2.44e6 1958-10-11         1958 Vost… <NA>    E-1 No… <NA>   SU        
    ##  8 1958… 2.44e6 1958-12-04         1958 Vost… <NA>    E-1 No… <NA>   SU        
    ##  9 1958… 2.44e6 1958-02-01         1958 Jupi… JunoI   Explor… US     US        
    ## 10 1958… 2.44e6 1958-03-26         1958 Jupi… JunoI   Explor… US     US        
    ## # … with 5,716 more rows, and 2 more variables: category <chr>,
    ## #   agency_type <chr>
