# How to Summarise 

Up to this point, any time that we've made a mapping of data, I've done the mapping for you. Now it is time to take the gloves off and get to it yourself. 

When you summarise data you are making the active decision: 

> I would like to show less data -- I would like to produce some summary of the data that is a useful simplification 

As we move into s203, you'll see that these summaries have a formal definition as a _statistic_ where we're making a mapping of a random variable into a lower-dimensional position representation on the real number space; but that formalism isn't necessary yet. 

A summary of data could come in one of many forms -- in fact, maybe without knowing it, we've already been summarising data when we've been asking 

> "How many squirrels of each color did we observe on these days?"

The answer to that question takes the **whole** data seires that we have, and produces a smaller, shorter representation that we're then reasoning about and plotting. 

Other forms of summary could be averages, medians, variances, or **any** other statistic. The usefulness of a summary can only be assessed in the context where it is being used, so without some other criteria is isn't really possible to _prefer_ one summary over another. 

# Summarising within dplyr 

To produce a summary of a variable within dplyr you use the `summarise` (alternatively spelled `summarize` -- the package author is from New Zealand and so chooses to spell in his native spelling. There is actually a **ton** of interesting sociology and ethnography about why the de facto language for coding is some variant of the English language. Personally, I'm a total mixing pot of spelling for this -- first, I don't really care about spelling; second, my mum is Canadian (and so spells one way) but I grew up in the USA (so spell the other way)). 

At its simplest, this might look as the following: 

```
data_frame %>% 
  summarise(average_of_variable = mean(variable))
```

This process would start from the object called `data_frame`, and would then produce a new variable called `average_of_variable` that applies the `mean()` function against the variable called `variable`. 

As a result of this call, we would return back a single number, with the name average_of_variable`.

# Coding task 

- Navigate to the [Datahub](https://ischool.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FUCB-MIDS%2Fr_bridge&urlpath=rstudio%2F&branch=master) and open the code summarize.Rmd`. 
- This code will ask you to produce a few short summaries of data. 
