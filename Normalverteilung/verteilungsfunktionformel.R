# draw standard normal and equation
curve(pnorm(x), from = -4, to = 4, col="blue", ylab = "Wahrscheinlichkeit", main="Verteilungsfunktion der Standardnormalverteilung", lwd=2)
text(-2, 0.7, expression(Phi(x) == paste(frac(1, sqrt(2 * pi)),
                                       " ", integral(e^{
                                         -frac(1, 2)*t^2
                                       }, -infinity, x)*dt)), cex = 1.2)
