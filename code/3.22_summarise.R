library(tidyverse)

agencies <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
launches <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')

agencies %>%  
  mutate(count_log = log(count)) %>%  
  view

agencies %>%  
  summarize(
    average_launches = mean(count), 
    var_launches = var(count), 
    number_of_agencies = length(unique(agencies)), 
    count_log = log(count)
  )
