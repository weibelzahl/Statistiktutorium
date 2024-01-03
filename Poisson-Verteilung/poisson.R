# draw Poisson distribution 
barplot(dpois(0:20, 3), names.arg = 0:20, main=expression(paste("Poisson-Verteilung mit ", lambda, "=3")), xlab="Treffer", ylab="P(X=x)")
