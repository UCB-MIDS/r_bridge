## This code is for you to practice sending work from the Rstudio editor to 
## the console. For right now, we're writing the code that is narrative 
## surrounding the code to be executed in comments. 

## A single `#` anywhere on a line will open a comment such that everything 
## after that mark will be commented out. 

not_commented <- 'yes' # but this is now commented. 

## Note as well, that we're trying to keep our lines to fewer than 80
## characters per line. This is _generally_ accepted best practice for code.

## Run the following line, creating an object called `dogs` that has the
## names of five dogs. Do so using the keyboard shortcuts to fire a line. 

dogs <- c('Fluffy', 'Spot', 'Chance', 'Rex', 'George')

## What is the result of running that line? 
## - Does anything change in the editor? 
## - Does anything change in the console? 

## The _call_ is printed in the console, but the result is not. 
## The default behavior for an object when you call it without 
## modification is to print that object to the screen. 

dogs

## We're also cat people here in MIDS. Use the keyboard shortcut 
## to navigate down to the console and create a new object called 
## cats that has the name of two cats. 

## Note three pieces of the process above: 
## 
## 1. We had to "concatenate" our object together using c()
## 2. The names of cats are probably strings of letters, 
##    which you will have to enclose in quotes of some kind. 
##    Single quotes '' and double quotes "" are both fine. 
## 3. We assigned values into an object using the <- 
##    assignment operator. 

cats

## Let's have a little more fun. First, install some dog data. 

library(tidyverse)

devtools::install_github("kjhealy/nycdogs")
library(nycdogs)

## What are the names of the variables that are in the data? 
names(nyc_license)

## (Real quick: Why do people gender dogs? Deep thoughts.)

## What are the most common names in NYC? 
nyc_license %>% 
  group_by(animal_name) %>% 
  summarize(total = n()) %>% 
  arrange(desc(total)) # this arranges in decending order 

## What would you do if you wanted to take this whole pipeline
## and assign it into a new object? 

top_dog_names <- 
  
## Note that until you fill out this line the "linter" that is checking 
## your code syntax is going to raise an issue to the left of the 
## line numbers. 
  
## Please fill in the code that would assign the top dog names 
## into this new object. 
  
## How many dogs are there named "Chance" or "Champion"? 
  
top_dog_names %>% 
  filter(animal_name %in% c('Chance', 'Champion'))

## Do you think there are more or fewer dogs named "George"? 
## Write the filter that would accomplish this. 

## Finally, let's see if we can learn where dogs with different names live. 
## We will write the function for you, but you're going to have to use it. 

theme_nymap <- function(base_size=9, base_family="") {
  require(grid)
  theme_bw(base_size=base_size, base_family=base_family) %+replace%
    theme(axis.line=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          axis.title=element_blank(),
          panel.background=element_blank(),
          panel.border=element_blank(),
          panel.grid=element_blank(),
          panel.spacing=unit(0, "lines"),
          plot.background=element_blank(),
          legend.justification = c(0,0),
          legend.position = c(0.1, 0.6), 
          legend.direction = "horizontal"
    )
}

dog_map <- function(dog_name = 'Princess') { 
  ## this function takes only the name of the 
  ## dog and produces a percentage distribution 
  ## of that name compared to all the other names 
  ## in that zipcode. 
    # sf library needs the rocker/geospatial docker 
    # image when running locally
    if (!require('sf')) {
      stop('sf package requires the docker image: rocker/geospatial')
    }
    nyc_license %>% 
      group_by(zip_code, animal_name) %>%  
      summarise(total = n()) %>%  
      mutate(freq = (total / sum(total)) * 100) %>%  
      filter(animal_name == dog_name) %>%  
      left_join(nyc_zips, .) %>% 
      ggplot(mapping = aes(fill = freq)) +
      geom_sf(color = "gray80", size = 0.1) +
      scale_fill_viridis_c(option = "A") +
      labs(fill = "Percent of Licensed Dogs") +
      annotate(geom = "text", x = -74.145, y = 40.82, 
               label = paste("Where's", dog_name, "?"), size = 6) + 
      theme_nymap() + 
      guides(fill = guide_legend(title.position = "top", 
                                 label.position = "bottom")) 
      
  }
  
## Now that we have written the function, where is the highest density of 
## dogs named 'Chance'? 

dog_map('Thor')

## Where is the highest density of dogs named 'Princess'? 
