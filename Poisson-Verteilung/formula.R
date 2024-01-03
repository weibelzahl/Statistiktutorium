# draw Poisson formula 
plot.new()
text(0.3, 0.5, "Poisson-Verteilung", cex = 1.5, col = "blue")
text(0.3, 0.2, 
     expression(P(X==x) == paste(frac(lambda^x, x*"!"), " ", e^-lambda)), 
     cex = 1.5)

