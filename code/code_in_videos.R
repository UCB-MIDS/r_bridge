library(tidyverse)
library(ggplot2)
library(patchwork)

squirrel_subset <- read.csv('squirrels_subset.csv')
squirrel_subset <- filter(squirrel_subset, !is.na(primary_fur_color))

squirrel_subset <- squirrel_subset %>%  
  mutate(date_f = as.Date.character(date, format = '%m%d%Y'))

squirrel_subset %>%  
  group_by(date_f) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels) + 
  geom_line()

squirrel_subset %>%  
  ggplot() + 
  aes(primary_fur_color) + 
  geom_bar() + 
  facet_grid(cols = vars(date_f))

squirrel_subset %>%  
  ggplot() + 
  aes(date_f) + 
  geom_bar() + 
  facet_grid(cols = vars(primary_fur_color))

squirrel_subset %>%
  group_by(date_f, primary_fur_color) %>%
  summarise(count_of_colors = n()) %>%
  ggplot() +
  aes(x = date_f, y = count_of_colors, color = primary_fur_color) +
  geom_line()

p1 <- squirrel_subset %>%  
  ggplot() + 
  aes(x = long, y = lat, color = primary_fur_color) + 
  geom_point()  

p2 <- squirrel_subset %>%  
  ggplot() + 
  aes(long, fill = primary_fur_color) + 
  geom_histogram(stat = 'density')

p1 / p2




squirrel_subset %>%
  group-by(date_f) %>%  
  summarise(count = n()) %>% 
  ggplot() +
  aes(x = date_f, y = count) + 
  geom_line()

ggplot(data = squirrel_subset) + 
  aes(x = long, y = lat, color = primary_fur_color) + 
  geom_point() + 
  coord_map()


squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  geom_line() + 
  theme_minimal()

squirrel_subset %>%  
  ggplot() + 
  aes(x = date_f) + 
  geom_histogram() + 
  facet_wrap(vars(primary_fur_color), ncol = 1)


squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels) + 
  facet_wrap(facets = vars(primary_fur_color), nrow = 1) + 
  geom_line()

squirrel_subset %>%  
  ggplot() + 
  aes(date_f, fill = primary_fur_color) + 
  geom_histogram(position = 'dodge')
  
squirrel_subset %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE)


squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE) + 
  labs(
    title = 'There are a lot of grey squirrels',
    subtitle = 'But, people are collecting data in later days',
    x = 'Date of observation', 
    y = 'Count of squirrels', 
    color = 'Primary Fur Color'
  )

squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE) + 
  lims(
    x = c(as.Date.character('2018-10-07'), 
          as.Date.character('2018-10-16'))) +
  labs(
    title = 'There are a lot of grey squirrels',
    subtitle = 'But, people are collecting data in later days',
    x = 'Date of observation', 
    y = 'Count of squirrels', 
    color = 'Primary Fur Color'
  )

squirrel_subset %>%  
  group_by(date_f, primary_fur_color) %>%  
  summarise(count_of_squirrels = n()) %>%  
  ggplot() + 
  aes(x = date_f, y = count_of_squirrels, color = primary_fur_color) + 
  stat_smooth(se = FALSE) + 
  coord_cartesian(
    xlim = c(as.Date.character('2018-10-07'), 
          as.Date.character('2018-10-16'))
  ) +
  labs(
    title = 'There are a lot of grey squirrels',
    subtitle = 'But, people are collecting data in later days',
    x = 'Date of observation', 
    y = 'Count of squirrels', 
    color = 'Primary Fur Color'
  )
