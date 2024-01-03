# take 1000 samples from population and calculate median
n <- 1000 # number of samples
k <- 50 # sample size
set.seed(345)
gewicht.medians <- rep(0, n)
for (i in 1:n){
  gewicht.medians[i] <-median(sample(gewicht, k))
}
hist(gewicht.medians, breaks=15, ylab = "Häufigkeit", main="Stichprobenverteilung des Medians", xlab="Gewicht (kg)")
arrows(81.5, 100, 81.5, 40, col="red", lwd = 3)

