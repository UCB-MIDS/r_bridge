Make A Data Set
================
w203: Statistics for Data Science
8/14/2020

# Paste Farm Code

Start by pasting the code that you wrote to create the farm animals
below.

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

## Combine into a dataset

Now, combine all of these variables into a single dataset, called
`tilden`.

``` r
tilden <- data.frame(
  ID, animal, petting_zoo, weight, feed
)
```

## Typecast

Now do a little bit of mutating and type converting.

  - Since we know that each of the types of animals has a specific
    amount that they eat, let’s label them “hungry boi” if they eat more
    than average; and “slender boi” if they eat less than average.
    (Sorry… I know this coding might be getting tedious\!).
  - Make each of these relative to the mean within that animal type.

<!-- end list -->

``` r
tilden %>%
  group_by(animal) %>%  
  mutate(hungry_slender = ifelse(weight > mean(weight), 'hungry boi', 'slender boi'))
```

    ## # A tibble: 300 x 6
    ## # Groups:   animal [5]
    ##       ID animal petting_zoo weight  feed hungry_slender
    ##    <int> <chr>  <chr>        <dbl> <dbl> <chr>         
    ##  1     1 cow    no           1269.  38.1 hungry boi    
    ##  2     2 cow    no           1013.  30.4 slender boi   
    ##  3     3 cow    no           1098.  32.9 hungry boi    
    ##  4     4 cow    no            926.  27.8 slender boi   
    ##  5     5 cow    no           1196.  35.9 hungry boi    
    ##  6     6 cow    no           1036.  31.1 slender boi   
    ##  7     7 cow    no            950.  28.5 slender boi   
    ##  8     8 cow    no            981.  29.4 slender boi   
    ##  9     9 cow    no            981.  29.4 slender boi   
    ## 10    10 cow    no           1118.  33.5 hungry boi    
    ## # … with 290 more rows
