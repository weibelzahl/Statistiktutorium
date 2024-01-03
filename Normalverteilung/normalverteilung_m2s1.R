# draw standard normal and equation
curve(dnorm(x), from = -4, to = 4, col="grey", ylab = "Wahrscheinlichkeitsdichte", main=expression(paste("Normalverteilung (", mu, "=2; ", sigma, "=1)")), lwd=2)
curve(dnorm(x, mean = 2), from = -4, to = 4, col="red", add = TRUE, lwd=2)
            
            
