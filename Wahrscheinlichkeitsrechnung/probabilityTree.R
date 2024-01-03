# Show probabilityTree.png
# Operate locally to avoid workspace clutter
local({
  img <- readPNG(file.path(path.package("swirl"), "Courses", "Statistiktutorium", "Wahrscheinlichkeitsrechnung", "probabilityTree.png"))
#  h <- dim(img)[1]
#  w <- dim(img)[2]
  try(dev.off(),silent=TRUE)
  plot.new()
#  wdev <- par('fin')[1]
#  hdev <- par('fin')[2]
#  rasterImage(
#    as.raster(img),
#    par('fig')[1], par('fig')[3], par('fig')[2]*hdev*h/w/wdev*1.3, par('fig')[4],
#    interpolate=FALSE
#  )
grid::grid.raster(img)
})