# aes(x= , y= , fill =) 

The x and y coordinate mappings are the most straightforward set of mappings that we typically interact with in the `aes()` function call. But, we can map more data into our plot by passing additional aesthetic arguments. 

The `color` and `fill` aesthetic mappings change the colors of the geometries that are plotted, depending on values that they are mapped to. When the data passed to these arguments are continuous, the colors will be placed onto a gradient scale; when the data passed to these arguments are categorical, a different color will be used for each level within the variable. These are the two aesthetics that I use most frequently 

One piece of trivia, that actually ends up mattering -- color defines the external “outline” of geometries, while fill defines the internal colors of the geometries. 

The `shape` of a geometry can also be set by a variable in the data. Shape most often affects geom_point, but also a few other geometries that you might find to use. 

The `size` of a geometry determines the size (in mm) of the geometry. For points, this is the size of the point, for lines, this is the width of the line. 

# Coding task 

- Navigate to the [Datahub](https://r.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FUCB-MIDS%2Fr_bridge&urlpath=rstudio%2F&branch=master) and open the code `additional_plot_features.Rmd`. 
- This code will ask you to make scatter plots with different features.
- Note that we're switching to working with R Markdown file now, which are enhancements over the .R files that we've been using to this point. We'll explain that in the file itself. 

