library(tidyverse)
library(ggplot2)
library(patchwork)

squirrel_subset <- read.csv('squirrels_subset.csv')

squirrel_subset_by_color <- squirrel_subset %>%  
  group_by(primary_fur_color) %>%  
  summarise(count_by_color = n())

plot_col <- squirrel_subset_by_color %>%  
  ggplot() + 
  aes(x = primary_fur_color, y = count_by_color) + 
  geom_col()

plot_bar <- squirrel_subset %>%  
  ggplot() + 
  aes(x = primary_fur_color) + 
  geom_bar()

plot_col | plot_bar
