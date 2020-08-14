# Control Flow 

For individuals who are coming from an engineering background, control flow is second nature. For folks coming from other backgrounds (like myself) the concept can be a little baffling. 

The general idea is that you're going to set a condition, and take some actions given that condition holds. If that condition doesn't hold, you'll do something else -- maybe take some other action, maybe stop, maybe ... 

The thing is: when dealing with data it **MIGHT** seem like a good idea to write loops, but generally it is not. R is built for vector operations -- which you've been using for a while, and used just a moment ago when you type cast the 'thick bois' and 'slender bois'. This vector operation has two benefits: 

1. It makes the code much more legible, reducing the boilerplate that you've got to write; 
2. It makes the code much faster; most vectorized operations are written in compiled, optimized C. A lower-level, faster language. 

For now, read [this short explaination](https://adv-r.hadley.nz/control-flow.html) about control flow in R.  


