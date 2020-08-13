library(tidyverse)

agencies <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
launches <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')

# filter 

filter(launches, launch_year < 1968, launch_year > 1966, agency == 'US')

# magrittr: %>%

launches %>%  
  filter(launch_year < 1968) %>%  
  filter(launch_year > 1966) %>%  
  filter(agency == 'US' | agency == 'SU')
  

