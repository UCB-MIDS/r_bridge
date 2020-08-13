library(tidyverse)
library(ggplot2)
library(patchwork)

theme_set(theme_minimal())

squirrel_subset <- readr::read_csv('squirrels_subset.csv')

squirrel_subset_by_color <- squirrel_subset %>%  
  mutate(date_f = as.Date.character(date, format = '%m%d%Y')) %>% 
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n())

squirrel_subset_by_color %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE) + 
  labs(
    title = 'Decreasing Count of Squirrels Through Time', 
    subtitle = 'Moving average smoother estimate', 
    x = 'Date of Observation', 
    y = 'Count of Squirrels', 
    color = 'Primary Fur Color') + 
  coord_cartesian(
    xlim = c(as.Date.character('2018-10-08'),
             as.Date.character('2018-10-15'))) 
