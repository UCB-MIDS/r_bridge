library(ggplot2)
library(patchwork)

theme_set(theme_minimal())

ggplot(data = ss) + 
  aes(x = long) + 
  aes(y = lat) + 
  geom_point()

p1 <- ggplot(data = ss, aes(x = long, y = lat)) + geom_point()

p2 <- ggplot(data = ss, aes(long)) + 
  geom_histogram()

p1 / p2

ggplot(data = ss, aes(x = long, y = lat, shape = primary_fur_color, color = primary_fur_color)) + 
  geom_point() + 
  coord_quickmap()

ggplot(economics, aes(date, unemploy)) + 
  geom_line()

ggplot(economics_long, aes(date, value01, colour = variable)) +
  geom_line()

ggplot() + 
  geom_line(data = economics, mapping = aes(x = date, y = pce)) + 
  geom_line(data = economics, mapping = aes(x = date, y = pop))

economics_long %>%  
  filter(variable %in% c('pce', 'pop')) %>%  
  ggplot(aes(date, value, color = variable)) + 
  geom_line()

economics_long %>%  
  ggplot(aes(date, value01, color = variable)) + 
  geom_line()
