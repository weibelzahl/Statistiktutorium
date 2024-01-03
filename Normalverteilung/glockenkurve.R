# draw three curves for MCQ
curve(dnorm(x), from = -4, to = 4, col="blue", ylab = "Wahrscheinlichkeitsdichte", lwd=2)
curve(dunif(x,-4,4), add = TRUE, col="red", lwd=2)
curve(pnorm(x)*0.399, add = TRUE, col="green", lwd=2)
