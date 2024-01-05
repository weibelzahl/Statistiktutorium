# show chi2-distribution
title <- expression(paste(chi^2, "-Verteilung (df=4)"))
xlab <- expression(chi^2)
curve(dchisq(x, 4), 
      from = 0, 
      to = 20, 
      main =title,
      xlab = xlab, 
      ylab="Wahrscheinlichkeitsdichte")
