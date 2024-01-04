# show chi2 distribution with 95%-segment
title <- expression(paste(chi^2, "-Verteilung (df=4)"))
xlab <- expression(chi^2)
colour1 <- "lightgreen"
colour2 <- "red"
density <- 5
cut <- qchisq(.95, 4)
curve(dchisq(x, 4), 
      from = 0, 
      to = 20,
      main =title,
      xlab = xlab, 
      ylab="Wahrscheinlichkeitsdichte")
x1 <- seq(cut,20,0.001)
y1 <- dchisq(x1, 4)
polygon(c(x1, cut), c(y1,0), col=colour1, density = density)
text(x = 12, y = .02, "5%", col = "black")
x2 <- seq(0, cut,0.001)
y2 <- dchisq(x2, 4)
polygon(c(x2, cut), c(y2,0), col=colour2, density = density)
text(x = 4, y = .02, "95%", col = "black")
