library(tidyverse)
library(ggplot2)

ss <- read_csv('./squirrel_subset.csv')

ss %>%
  ggplot() +
  aes(x = lat, y = long) +
  geom_point()
