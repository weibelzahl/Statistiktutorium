# draw barplot of probability distribution
Augensumme <- c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1)
xlab <- 2:12
Augensumme_freq <- c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1)
p <- Augensumme / 36
df <- data.frame(Augensumme = xlab, p)
barplot(df$p, names.arg = df$Augensumme, main = "Wahrscheinlichkeitsverteilung Augensumme", xlab = "Augensumme", ylab = "P(X=x)")
