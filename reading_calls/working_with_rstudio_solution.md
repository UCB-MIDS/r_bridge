# Solutions Are In Datahub 

If you're interested in seeing the solutions to the _small_ amount of code that I wrote, you can view the file back in the datahub. It is in the file `issuing_code_and_reading_outputs_solutions.R` 

But, I really only asked you to combine two lines, so you can probably view it here instead.  

# Cats 
If you want to make a `cats` object that contains a vector of cat names, you can do so in the following way (you pick the names). 

```
cats <- c('Fluffy', 'Tiger')
```

To create an object called `top_dog_names` that contains the most frequently used dog names you can "assign" the filtering pipeline that I wrote into the object using the `<-` operator.

This _isn't_ going to assign the pipeline functions into that object; rather, it is going to assign the results of the pipeline into that object. This is an important difference that some will be interested in. 

- What this means: if you change the upstream data that is in `nyc_license` it will not change the values that are listed in the `top_dog_names` object. The elements of that object are written once at the time that you executed the code. 

```
top_dog_names <- nyc_license %>% 
  group_by(animal_name) %>% 
  summarize(total = n()) %>% 
  arrange(desc(total)) # this arranges in decending order 
```
