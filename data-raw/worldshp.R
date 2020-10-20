worldshp <- rgdal::readOGR(dsn = file.path(paste(getwd(),"/inst/extdata", sep=""), "TM_WORLD_BORDERS_SIMPL-0.3.shp") , stringsAsFactors = F)

worldshp$NAME <- gsub("[^\x20-\x7E]", "", worldshp$NAME)

usethis::use_data(worldshp, overwrite = TRUE)
