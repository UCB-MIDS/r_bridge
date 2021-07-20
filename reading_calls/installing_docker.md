# Installing Docker 

(An important note is that you need not _both_ use the datahub and install docker. That might be useful in the long run, but I wouldn't worry about solving a long-run problem right now.)

What is docker? Why are we advocating that you use it, if you’re going to build this locally on your computer?  From the documentation, 

> Docker is an open platform for developing, shipping, and running applications … [that] enables you to separate your applications from your infrastructure.

The analogy to a shipping container is used throughout, and is tremendously insightful. Suppose that your computer is a large ocean-going container ship (the sort of which are certainly presently loading and off-loading at the Port of Oakland just down the road from UC Berkeley). This ship, the USS MIDS (your computer), can do many things and go many places.

Suppose that you wanted this ship to go many places, but also to bring specific things with it while it did so: specifically, suppose that it had to bring your house or apartment, and also your car, dog, and all your worldly possessions. Not only your possessions, but also all of the possessions of all of your classmates. 

One way that you might load this ship is to just stuff everything onboard, in whatever order it shows up. 

> Here’s a truck? Put it on! Oh, a lamp? Put it in the bed of that truck! 

So long as you don’t have much to put on, this actually might be the most efficient way to load the ship. But, what happens when the ship gets full? Or, what happens when many many people’s things are onboard. It begins to be difficult to determine what stuff should go where, what stuff belongs to whom, and where new things should go. 

Instead, the idea behind docker is that every person (or application, or task) gets its own container that has a predefined shape that all fit together in a predictable way. Each of these containers it upon a common framework (your computer resources) and have proscribed input, output, and compute access. To return to the analogy, this way, you can pack your house/apartment inside a container, and can stack it on top of someone else's container in a predictable way. If the ship is empty this is probably overkill; but, as things become more complex, this structure becomes really, really useful to have. 

Docker can be installed for [Mac](https://docs.docker.com/docker-for-mac/install/), [Windows](https://docs.docker.com/docker-for-windows/install/), and probably any other arbitrary system that you’re working on from the general [install page](https://docs.docker.com/install/).

Once you have installed Docker, and with it running, you can pull a fully built environment onto your computer by issuing the following at the command line. 

    docker pull rocker/geospatial
    docker run --rm -v [path-to-local-files]:[/home/rstudio/further-location-on-container] -p 8787:8787 -e PASSWORD=foo rocker/tidyverse

Here’s what is happening with that call: 

- `docker run` uses the docker command line client to start running a docker process 
- `--rm` specifies that when we close the container, we also want to remove it to keep it from laying around 
- `-v` specifies that we would like to mount a volume (a file folder) into this container from our local machine to the container that is running. We have to specify both where it exists locally, and where we would like it to exist on the container
- `-p` specifies what port we would like to view this on; a standard choice that is reserved for this type of work is port 8787. Here, we’re specifying that we would like port 8787 on the local machine to interface with port 8787 on the container. 
- `-e` sets an additional environment variable that we’re going to need to login to the rstudio server, namely the password. Here we’re setting this to a benign value of foo. 
`rocker/geospatial` is the container image that we want to run. Notice that we're pulling a *large* image that has some geospatial libraries included in it. In particular we're going to use `sf` which is a "shape files" library later in the course. One could pull a smaller image for day-to-day work if you wanted; consider `rocker/verse` for this. There is a general principle at play here, maybe a Occam's razor for computing: take only what you need because you don't want to support more than absolutely necessary. 

So, if you were to narrate that entire call from front to back, it would read as: 

> With docker, run a container and remove it when we’re done. Mount the following folder in the container. Show me the container on the following port, and set the password. Oh, and by the way, the container that I’d like to run is the rocker/tidyverse container. 

Upon issuing this line, you have to navigate over to actually view what is being broadcast into that port. To do so, launch a web browser and navigate to: `localhost:8787`. At that point, you should be met with a login screen for your Rstudio running inside this container. 

The username for this rstudio is `rstudio` and the password, which you set, is `foo`. 

There is a really nicely built tutorial about this process, specifically as it concerns building Rstudio, that is presented by the people at rOpenSci http://ropenscilabs.github.io/r-docker-tutorial/. Especially relevant at this point are the first three lessons. 
