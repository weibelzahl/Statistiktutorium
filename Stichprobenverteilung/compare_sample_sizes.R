n <- 1000 # number of samples
k <- 100 # sample size
gewicht.means100 <- rep(0, n)
for (i in 1:n){
  gewicht.means100[i] <- mean(sample(gewicht, k))
}

# 2 columns
par(mfrow = c(1,2))
# histogram 50
hist(gewicht.means, breaks=50, probability = TRUE, ylab = "Dichte", main="Stichprobe n=50", xlab="Gewicht (kg)")
curve(dnorm(x, mean=85, sd=sd(gewicht)/sqrt(50)), add=TRUE, col="blue", lwd="2")
# save hist in order to reuse breaks
h <- hist(gewicht.means, breaks=50, plot = FALSE)
# sample distribution
hist(gewicht.means100, breaks=h$breaks, probability = TRUE, ylab = "Dichte", main="Stichprobe n=100", xlab="Gewicht (kg)")
curve(dnorm(x, mean=85, sd=sd(gewicht)/sqrt(100)), add=TRUE, col="blue", lwd="2")
# restore default
h <- NULL
par(mfrow=c(1,1))
