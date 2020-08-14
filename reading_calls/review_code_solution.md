# Review Code Solution 

One part of the code that I thought was particularily problematic was this set: 

```
access$fuel_stack[(access$LPG==1) &
                    (access$m4_q109_firewood=="No"& 
                       ((access$m4_q113_dungcake=="No") & 
                          ((access$m4_q114_agro=="No") & 
                             (access$m4_q115_other_fuel=="No"))))]<-4 #exclusive use

```

IT is really, really hard to grock just what is and what isn't being selected. 

I'd re-write this, using the `dplyr` framework as: 

```
access %>% 
  filter(
    LPG == 1, m_q109 == 'No', m4_q113_dungcake == 'No', 
    m4_q114_agro == 'No', m4_q115_other_fuel == 'No') %>%
  mutate(fuel_stack = 4)
  
```

I would also really, really, really like to know what the heck the `m4` object is, and why it is at the start of each of these variables. I would probably want to rename the entire set of varibles. 

The thing is, when code is as poorly structured and named as this code is, it makes it really hard to collaborate! And, the only thing scarier to me than sharing my code, is being the only person who has looked at code that I'm going to deploy.
