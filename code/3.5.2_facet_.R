library(tidyverse)
library(ggplot2)
library(patchwork)

squirrel_subset <- read.csv('squirrels_subset.csv')

squirrel_subset <- squirrel_subset %>%  
  mutate(
    date_f = as.Date.character(date, format = '%m%d%Y')
  )

squirrel_subset_by_color <- squirrel_subset %>%  
  group_by(primary_fur_color) %>%  
  summarise(count_by_color = n())

squirrel_subset %>%  
  ggplot() + 
  aes(x = date_f) + 
  geom_histogram() + 
  facet_wrap(vars(primary_fur_color), nrow = 3)

squirrel_subset %>%  
  group_by()
