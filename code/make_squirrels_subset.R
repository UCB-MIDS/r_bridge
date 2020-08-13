library(tidyverse)

nyc_squirrels <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-29/nyc_squirrels.csv")

ss <- nyc_squirrels %>% 
  select(c('long', 'lat', 'hectare', 'date', 'age', 'primary_fur_color')) %>%  
  drop_na() %>%  
  sample_n(1000)

write_csv(ss, path = './squirrels_subset.csv')