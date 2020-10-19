worldshp <- rgdal::readOGR(dsn = file.path(paste(getwd(),"/extdata", sep=""), "TM_WORLD_BORDERS_SIMPL-0.3.shp") , stringsAsFactors = F)

usethis::use_data(worldshp, overwrite = TRUE)
