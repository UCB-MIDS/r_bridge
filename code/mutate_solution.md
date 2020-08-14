Mutating a New Varible
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

# Mutate Task

  - Using the `agencies` data, create a series of variables that contain
    the log of the `count` of launches.

<!-- end list -->

``` r
agencies_log <- agencies %>% 
  mutate(count_log = log(count))

agencies_log
```

    ## # A tibble: 74 x 20
    ##    agency count ucode state_code type  class tstart tstop short_name name 
    ##    <chr>  <dbl> <chr> <chr>      <chr> <chr> <chr>  <chr> <chr>      <chr>
    ##  1 RVSN    1528 RVSN  SU         O/LA  D     1960   1991… RVSN       Rake…
    ##  2 UNKS     904 GUKOS SU         O/LA  D     1986 … 1991  UNKS       Upra…
    ##  3 NASA     469 NASA  US         O/LA… C     1958 … -     NASA       Nati…
    ##  4 USAF     388 USAF  US         O/LA… D     1947 … -     USAF       Unit…
    ##  5 AE       258 AE    F          O/LA  B     1980 … *     Arianespa… Aria…
    ##  6 AFSC     247 AFSC  US         LA    D     1961 … 1992… AFSC       US A…
    ##  7 VKSR     200 GUKOS RU         O/LA  D     1997 … 2001… VKS RVSN   Voen…
    ##  8 CALT     181 CALT  CN         LA/L… C     1957 … -     CALT       Zhon…
    ##  9 FKA      128 MOM   RU         O/LA  C     2004   2016… Roskosmos  Fede…
    ## 10 SAST     105 SBA   CN         O/LA… B     1993   -     SAST       Shan…
    ## # … with 64 more rows, and 10 more variables: location <chr>, longitude <chr>,
    ## #   latitude <chr>, error <chr>, parent <chr>, short_english_name <chr>,
    ## #   english_name <chr>, unicode_name <chr>, agency_type <chr>, count_log <dbl>

> But not that you don’t *have* to assign this to a new object.

  - Then, show only the columns that are called either `agency` or
    `contains()` the string “count”.

<!-- end list -->

``` r
agencies_log %>%  
  select(agency, contains('count'))
```

    ## # A tibble: 74 x 3
    ##    agency count count_log
    ##    <chr>  <dbl>     <dbl>
    ##  1 RVSN    1528      7.33
    ##  2 UNKS     904      6.81
    ##  3 NASA     469      6.15
    ##  4 USAF     388      5.96
    ##  5 AE       258      5.55
    ##  6 AFSC     247      5.51
    ##  7 VKSR     200      5.30
    ##  8 CALT     181      5.20
    ##  9 FKA      128      4.85
    ## 10 SAST     105      4.65
    ## # … with 64 more rows

  - Finally, `arrange()` these descending by `count`.

<!-- end list -->

``` r
agencies_log %>%  
  select(agency, contains('count')) %>%  
  arrange(desc(count))
```

    ## # A tibble: 74 x 3
    ##    agency count count_log
    ##    <chr>  <dbl>     <dbl>
    ##  1 RVSN    1528      7.33
    ##  2 UNKS     904      6.81
    ##  3 NASA     469      6.15
    ##  4 USAF     388      5.96
    ##  5 AE       258      5.55
    ##  6 AFSC     247      5.51
    ##  7 VKSR     200      5.30
    ##  8 CALT     181      5.20
    ##  9 FKA      128      4.85
    ## 10 SAST     105      4.65
    ## # … with 64 more rows

> HA\! It looks as though the data came in the door arranged by count.
> However, I would **never** suggest relying on this. If you want the
> data arranged by count, write the code to do so. The upstream data
> that comes into your analysis could change; potentially without you
> knowing.
> 
> If you want your data to have some particualr characteristic, you
> should write the code that makes it be so.
