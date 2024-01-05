generate_number <- function(chapter = 0) {
  # Generiere eine zufällige 4-stellige Zahl
  random_part <- as.character(sample(0:9, 3, replace = TRUE))
  
  # Aktuelles Datum abrufen
  current_date <- Sys.Date()
  
  # Den Tag des Monats extrahieren und in zweistelliges Format umwandeln
  day_of_month <- format(current_date, "%d")
  
  # Kapitel
  forth_digit <- chapter %/% 10
  fifth_digit <- chapter %% 10
  
  # Berechne die Quersumme der ersten sieben Ziffern
  sum_of_first_seven <- sum(as.numeric(c(random_part, forth_digit, fifth_digit, strsplit(day_of_month, "")[[1]])))
  
  # Die achte und neunte Ziffer setzen
  eighth_digit <- sum_of_first_seven %/% 10
  nineth_digit <- sum_of_first_seven %% 10
  
  # Die vollständige 9-stellige Zahl erstellen
  codenumber <- paste(paste(random_part, collapse = ""),
                      forth_digit,
                      fifth_digit,
                      day_of_month, 
                      eighth_digit,
                      nineth_digit, 
                      sep = "", collapse = ", ")
  # print(codenumber)
  myhexcode <- format(as.hexmode(as.integer(codenumber)), upper.case = TRUE)
  # print(myhexcode)
  return(myhexcode)
}
c <- 17
print(paste("Kapitel ", c, ": ", generate_number(chapter = c), sep = ""))
