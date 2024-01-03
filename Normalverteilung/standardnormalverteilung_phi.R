# draw standard normal and area of +-1 sd
cord.x <- c(-4,seq(-4,1,0.01),1) 
cord.y <- c(-4,dnorm(seq(-4,1,0.01)),0) 
curve(dnorm(x), from = -4, to = 4, col="blue", ylab = "Wahrscheinlichkeitsdichte", main="Standardnormalverteilung", lwd=2)
polygon(cord.x,cord.y,col='lightgrey', density=4)
curve(dnorm(x), from = -4, to = 4, col="blue", add=TRUE, lwd=2)
text(0, 0.2, expression(Phi(1)))
