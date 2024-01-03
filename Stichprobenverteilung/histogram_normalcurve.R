# sample distribution
hist(gewicht.gleichverteilung.means, breaks=50, ylab = "Dichte", main="Stichprobenverteilung", xlab="Gewicht (kg)", probability=TRUE)
# add normal curve 
curve(dnorm(x, mean=85, sd=sd(gewicht.gleichverteilung)/sqrt(50)), add=TRUE, col="blue", lwd="2")
