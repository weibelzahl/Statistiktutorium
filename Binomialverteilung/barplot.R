# draw barplot of probability distribution
n <- 10
p <- 0.6
Treffer <- 0:10
Dichte <- dbinom(Treffer, n, p) 
df <- data.frame(Treffer, Dichte)
barplot(df$Dichte, names.arg = df$Treffer, main = "Binomialverteilung (p=0.6; n=10)", xlab = "Anzahl Treffer", ylab = "P(X=x)")
