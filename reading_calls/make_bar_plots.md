# Making Bar Plots 

There are two ways to produce bar plots in `ggplot`. 

- With `geom_bar()`) you allow `ggplot` to do the functional counting and mapping for you at the time that you draw this plot. 
    - Sometimes this is the easier way to go about producing a bar plot; especially when the data is relatively simple that you're working with.
    - As well, when you're exploring data, it is quite nice to be able to view counts of factors, without an intermediate step to "roll-up" the observations. 
- With `geom_col()` **you** do the aggregating ahead of time and then tell the plot what height you want to map onto the y-axis.
    - When the data is complex, or if you have a particular way that you want to do the counting, this can be easier to produce what you'd like to see (because you can write the code to do the counting, rather than relying on the buried, built-in counting method that `ggplot` will use)
    
For me, the determination about which to use really comes down to: how easy is it to count these observations? If the answer is **anything** but "very easy" then I use `geom_col()`; otherwise, I use `geom_bar()`.  

# Coding task 

- Navigate to the [Datahub](https://r.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FUCB-MIDS%2Fr_bridge&urlpath=rstudio%2F&branch=master) and open the code `make_bar_plots.Rmd`. 
- This code will ask you to make bar plots with different features.
- Like the last code, we'll now be working with R Markdown files.  



