# Introduction to Space Data 

From here forward we're going to switch the data that we're using from squirrels to space. 

I came to this new data at[ Tidy Tuesday](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-01-15), a collection of data exploration challenges that come online every Tuesday. They're pretty neat sometimes! 

The data came to them from an article that the Economist published, which in turn came from two different sources. You can read about these sources on the website if you're interested.

Below I have reproduced the data file names and variable definitions. 

## Data files

| File                     | Description               | Source                             |
| --------                 | ----------------------    | ---------------------------------- |
| [agencies](agencies.csv) | Space launch providers    | Jonathan McDowell; _The Economist_ |
| [launches](launches.csv) | Individual space launches | Jonathan McDowell; _The Economist_ |

## Codebook

### launches

| variable    | definition                               |
| ----------- | ---------------------------------------- |
| tag         | Harvard or [COSPAR][cospar] id of launch |
| JD          | [Julian Date][jd] of launch              |
| launch_date | date of launch                           |
| launch_year | year of launch                           |
| type        | type of launch vehicle                   |
| variant     | variant of launch vehicle                |
| mission     |                                          |
| agency      | launching agency                         |
| state_code  | launching agency's state                 |
| category    | success (O) or failure (F)               |
| agency_type | type of agency                           |

### agencies

| variable           | definition              |
| ------------------ | ----------------------- |
| agency             | org phase code          |
| count              | number of launches      |
| ucode              | org Ucode               |
| state_code         | responsible state       |
| type               | type of org             |
| class              | class of org            |
| tstart             | org/phase founding date |
| tstop              | org/phase ending date   |
| short_name         | short name              |
| name               | full name               |
| location           | plain english location  |
| longitude          |                         |
| latitude           |                         |
| error              | uncertainty in long/lat |
| parent             | parent org              |
| short_english_name | english short name      |
| english_name       | english full name       |
| unicode_name       | unicode full name       |
| agency_type        | type of agency          |
