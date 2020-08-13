library(tidyverse)

agencies <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/agencies.csv')
launches <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-15/launches.csv')

d <- data.frame(
  id    = 1:15, 
  individual  = rep(LETTERS[1:5], each = 3), 
  group = rep(c('Group One', 'Group Two'), times = c(9, 6)),
  time  = rep(1:3, times = 5), 
  value = (1:15)^2
)

d <- d %>%  
  arrange(sample(id))

d %>%  
  group_by(group, time) %>%  
  summarise(
    value_average = mean(value)
  )


launches %>%  
  group_by(state_code, launch_year) %>%  
  summarise(total_launches = n()) %>%  
  arrange(desc(total_launches))
