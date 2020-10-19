library(tidycovid19)

covid19 <- download_merged_data(cached = TRUE, silent = TRUE)

covid19wrangled <- covid19 %>%
  dplyr::select(country,
                date, confirmed, deaths, recovered, region, population) %>%
  na.omit()

countries <- read.csv(here::here("inst/extdata/countries.csv"))

covid19total <- covid19wrangled %>%
  filter(date == max(date)) %>%
  select(country, confirmed, deaths, recovered, region, population) %>%
  left_join(countries,
            by = c("country" = "name")) %>%
  select(-country.y) %>%
  mutate(caseper10000 = confirmed/population*10000)

usethis::use_data(covid19total, overwrite = TRUE)
