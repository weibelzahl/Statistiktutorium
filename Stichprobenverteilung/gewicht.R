# draw distribution of male weight, mu=85kg, sd=10kg
set.seed(1234)
par(mfrow=c(1,1))
gewicht <- rnorm(50000, mean=85, sd =10)
hist(gewicht, breaks=50, ylab = "Häufigkeit", main="Gewichtsverteilung", xlab="Gewicht (kg)")

