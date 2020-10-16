## code to prepare `covid19wrangled` dataset goes here

library(tidycovid19)
library(tidyverse)

#COVID-19 data
covid19 <- download_merged_data(cached = TRUE, silent = TRUE)

covid19wrangled <- covid19 %>%
  select(country,
         date, confirmed, deaths, recovered, region, population) %>%
  na.omit()

usethis::use_data(covid19wrangled, overwrite = TRUE)
