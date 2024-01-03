# draw distribution of male weight, mu=85kg, sd=10kg
par(mfrow=c(1,1))
gewicht.gleichverteilung <- rep(65:105, 1200)
hist(gewicht.gleichverteilung, breaks= 64:105,ylab = "Häufigkeit", main="Gewichtsverteilung", xlab="Gewicht (kg)")
