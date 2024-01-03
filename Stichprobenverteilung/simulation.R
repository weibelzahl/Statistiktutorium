# take 1000 samples from population and calculate mean
n <- 1000 # number of samples
k <- 50 # sample size
gewicht.means <- rep(0, n)
for (i in 1:n){
  gewicht.means[i] <- mean(sample(gewicht, k))
}
