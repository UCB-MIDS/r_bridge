# Pick a Theme 

I mean, c'mon. One of the most fun things about plotting is making it look "like a plot that I made". Amiright? 

There are a whole host of themes that are available within ggplot. As we've demonstrated in the lecture these can be set in one of two ways: 

1. By adding a `+ theme_*()` layer onto your plot; or, 
2. By setting the theme for the whole session using `theme_set(theme_*())`. 

(In both of those, you would replace the * with the theme name you want to use.)

There are several themes that are built and maintained internal to the `ggplot` project. You can see a listing of them at [this link](https://ggplot2.tidyverse.org/reference/ggtheme.html). 

But, there are also a **ton** of other extensions that folks have built. Many of them are listed [at this github for ggthemes](https://github.com/jrnold/ggthemes). If you want to use these themes you can do the following: 

```
install.packages('ggthemes', dependencies = TRUE)
library(ggthemes)
```

And then add a theme from this layer as you might like. 

# Coding Task 

If you're interested: 
- Head to the Datahub.
- Load the file `pick_a_theme.Rmd` and then work to set themes, picking one that you prefer. 

