data_one <- data.frame(
  key_id = c('a', 'b', 'c', 'd'), 
  variable_one = 1:4, 
  variable_two = (1:4)^2
)

data_two <- data.frame(
  id_key = c('a', 'b', 'c', 'e'), 
  variable_a = c('apple', 'bananna', 'cantalope', 'durian'),
  variable_b = c('zebra', 'yak', 'gnu', 'wombat')
)

d <- merge(
  x = data_one, y = data_two, 
  by.x = 'key_id', by.y = 'id_key', 
  all.x = TRUE, all.y = TRUE
  )