## PlotRandom.R
##
## Purpose: build a function that will generate a random sample
##          of normal deviates, plot a histogram and provide
##          a list of summary results (mean, SD, generated random values)
##
## Input parameters:
##     numpts = the number of points to generate
##     mu = the theoretical mean of the Normal distribution
##     sigma = the standard deviation of the Normal distribution
##     numbins = the number of bins for the histogram
##     title = user specified title for the histogram
##     meanColor = the color for the overlaid mean
##     seed = a random number generator seed, to ensure
##            reproducibility
##
## Outputs: A list with the following elements
##     RandomValues = a vector with the generated random 
##                     values
##     Mean_x = the sample mean of RandomValues
##     StdDev_x = the sample standard deviation of RandomValues
##

## First, stuff from last time....
plotRandomD <- function(numpts=100) {
  hist(rnorm(numpts))
}

plotRandomD()

###########################

## Now, let's build in more flexibility for our function: 

plotRandomNormals <- function(numpts=1000, mu=24, sigma=3, numbins=15,
                              title = "My histogram, Oct 14 2022",
                              meanColor="red",
                              seed=8675309) 
{
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_X = mean_x,
       StdDev_X = sd(rand_x),
       RandomValues = rand_x)
}

plotRandomNormals()