# draw standard normal and equation
curve(dnorm(x), from = -4, to = 4, col="blue", ylab = "Wahrscheinlichkeitsdichte", main="Standardnormalverteilung", lwd=2)
text(0, 0.1, expression(f(x) == paste(frac(1, sqrt(2 * pi * sigma^2)),
                                       " ", e^{
                                         frac(-(x - mu)^2, 2 * sigma^2)
                                       })), cex = 1.2)
