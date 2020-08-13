library(tidyverse)

agencies <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
launches <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')

agencies %>%  
  mutate(
    count_log_10 = log10(count), 
    count_log_e  = log(count), 
    count_log_e_10 = count_log_e + 10) %>%  
  select(agency, contains('count')) %>%  
  view()
