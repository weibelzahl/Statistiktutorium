# swirl-Motivations-Nachrichten zu unterdrücken
options(swirl_is_fun = FALSE)
options(swirl_language = "german")

# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.

find_course <- function(course){
  file.path(find.package("swirl"), "Courses", gsub(" ", "_", course))
}

# attempt to display a swirl file
display_swirl_file <- function(filename, course, lesson=""){
  fname <- filename
  if(lesson != "")fname <- file.path(lesson, filename)
  loc <- gsub(" ", "_", file.path( find_course(course),  fname))
  toloc <- file.path("swirl_temp", filename)
  if(!file.exists("swirl_temp"))dir.create("swirl_temp")
  file.copy(loc, "swirl_temp", overwrite=TRUE)
  if(isTRUE(1 == grep("*[.]R$", filename))){
    file.edit(toloc, title=filename)
  } else {
    file.show(toloc, title=filename)
  }
  message(paste("(Sollte die Datei", filename, "nicht automatisch geoeffnet worden sein, finden Sie jetzt in", file.path(getwd(), toloc), "eine Kopie)"))
}
