library(tidyverse)
library(ggplot2)
library(patchwork)

squirrel_subset <- read.csv('squirrels_subset.csv')

squirrel_scatter <- squirrel_subset %>%  
  ggplot() + 
  aes(x = long, y = lat) + 
  geom_point()

squirrel_long_histogram <- squirrel_subset %>%  
  ggplot() + 
  aes(x = long) + 
  geom_histogram()

squirrel_long_density <- squirrel_subset %>%  
  ggplot() + 
  aes(x = long) + 
  geom_density()

squirrel_long_histogram / squirrel_long_density

geom_
