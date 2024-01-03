# 2 columns
par(mfrow = c(1,2))
# original histogram
hist(gewicht.gleichverteilung, breaks= 64:105, ylab = "Häufigkeit", main="Gewichtsverteilung", xlab="Gewicht (kg)")
# sample distribution
hist(gewicht.gleichverteilung.means, breaks=50, ylab = "Häufigkeit", main="Stichprobenverteilung", xlab="Gewicht (kg)")
# restore default
par(mfrow=c(1,1))
