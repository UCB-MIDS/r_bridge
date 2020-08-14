# Mini Project 

If you're having fun with this split-apply-combine framework here's an idea for about a 60 minute project that you could work on. 

- I want to emphasize **this is not necessary** but if you want to solidify your work everything that we've done to this point, it might help! 

# Seattle Bike Data 

As I'm writing this, I'm on my way to Seattle -- probably my favorite American city. The city has a fantatsic culture around biking, especially for communting to and from work. Because the city was interested in knowing just how many people ride along their bike trails, they installed counters tha record the following information: 

- The date (and hour) of the observation;
- The number of cyclists observed (total) in that hour; which is a combination of two other fields that are recorded: 
    - How many cyclists are recorded going east-bound; and, 
    - How many cyclists are recorded going west-bound. 
    
## Writeup using this data 

The Seattle Times did a [write-up](https://www.seattletimes.com/seattle-news/transportation/what-we-can-learn-from-seattles-bike-counter-data/#interactive) using the data that you can read. 

## Mini-project using this data 

The Seattle bike data is available[[here]](https://www.seattle.gov/transportation/projects-and-programs/programs/bike-program/bike-counters). But, somewhat annoyingly, for the busiest routes, they're only making a dashboard available. 

However, for the bike counter that is along the I-90 Bridge that separates Seattle from Richmond, they make the full dataset available. A link is [[here]](https://www.seattle.gov/transportation/projects-and-programs/programs/bike-program/bike-counters). 

With this data: 

1. Download a .csv file of the data. 
2. Load this data
    - If it is in your downloads folder: then you can read the data with the following call: `bike_data <- read_csv('~/Downloads/NAME_OF_THE_DATA_THAT_YOU_DOWNLOADED.csv')` where you will replace the `NAME_OF_THE_DATA_THAT_YOU_DOWNLOADED` callout with its actual name. 
3. See if you can work with the data to identify whether there are patterns: 
    - Are there more east-bound or west-bound rides at certain parts of the day? Why might this be? 
    - Are there months of the year that there are more (or fewer) total rides? 
    - Are the weekends different from the weekdays? 
    
One small complication is that the `date` field hasn't actually been turned into something that you can use. To use it (without using more advanced POSIX time series types), you will have to `mutate` pieces off of this data). 

Here is a little example that will pull the year off this column: 

```
bike_data %>% 
    mutate(year = substr(Date, start = 1, stop = 4))
```

Have fun! 
