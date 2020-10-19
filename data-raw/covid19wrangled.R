library(tidycovid19)

covid19 <- download_merged_data(cached = TRUE, silent = TRUE)

covid19wrangled <- covid19 %>%
  dplyr::select(country,
         date, confirmed, deaths, recovered, region, population) %>%
  na.omit()

usethis::use_data(covid19wrangled, overwrite = TRUE)
