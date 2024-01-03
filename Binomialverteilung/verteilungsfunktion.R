# Verteilungsfunktion B(10, 0.6)
barplot(pbinom(0:10, 10, 0.6), names.arg = 0:10, main="Verteilungsfunktion von B(10, 0.6)", xlab="Treffer", ylab="P(X<=k)")
