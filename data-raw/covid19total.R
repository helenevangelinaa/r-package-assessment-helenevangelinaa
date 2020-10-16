library(tidycovid19)
library(tidyverse)

countries <- read.csv(here::here("inst/extdata/countries.csv"))

covid19wrangled <- covid19 %>%
  select(country,
         date, confirmed, deaths, recovered, region, population) %>%
  na.omit()

covid19total <- covid19wrangled %>%
  filter(date == max(date)) %>%
  select(country, confirmed, deaths, recovered, region, population) %>%
  left_join(countries,
            by = c("country" = "name")) %>%
  select(-country.y) %>%
  mutate(caseper10000 = confirmed/population*10000)

usethis::use_data(covid19total, overwrite = TRUE)
