# create histogram of sum of two dice throws
Augensumme <- c(2,  3,  4,  5,  6,  7,  3,  4,  5,  6,  7,  8,  4,  5,  6,  7,  8,  9,  5,  6,  7,  8,  9, 10,  6,  7,  8,  9, 10, 11,  7,  8,  9, 10, 11, 12)
hist(Augensumme, breaks=c(0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5),include.lowest = TRUE,xlim = c(0, 13), right = FALSE, ylab = "Haeufigkeit", main = "Histogramm der Augensumme")
