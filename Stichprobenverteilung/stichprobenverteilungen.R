# draw different sample distributions
curve(dnorm(x, mean=85, sd=10/sqrt(100)), col="green", from = 75, to=95, ylab="Dichte", xlab="Gewicht (kg)", main="Stichprobenverteilungen")
curve(dnorm(x, mean=85, sd=10/sqrt(50)), col="blue", from = 75, to=95, xlab="Dichte", ylab="Gewicht (kg)", add=TRUE)
curve(dnorm(x, mean=85, sd=10/sqrt(20)), col="red", from = 75, to=95, xlab="Dichte", ylab="Gewicht (kg)", add=TRUE)
text("n=20", col="red", x = 77, y=0.1, adj = 0)
text("n=50", col="blue", x = 77, y=0.2, adj = 0)
text("n=100", col="green", x = 77, y=0.3, adj = 0)
text(expression({SE == sigma(bar(x))} == frac(sigma, sqrt(n))), col="black", x = 88, y=0.2, adj = 0)
