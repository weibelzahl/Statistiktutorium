hist(gewicht.medians, breaks=15, ylab = "Häufigkeit", main="Stichprobenverteilung des Medians", xlab="Gewicht (kg)")
text(expression(SE[median] == sqrt(frac(pi, 2)) %.% frac(sigma, sqrt(n))), col="black", x = 88, y=150, adj = 0)
