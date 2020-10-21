#' covid19total dataset
#'
#' This data set contains the total cases, deaths, recovered of COVID-19 by country alongside with some other informations
#' 
#' @format a dataset with 183 rows and 9 variables
#' \describe{
#' \item{country}{The country name}
#' \item{confirmed}{The number of confirmed cases of the country}
#' \item{deaths}{The number of deaths of the country}
#' \item{recovered}{The number of recovered cases of the country}
#' \item{region}{The region where the country located (e.g. South Asia)}
#' \item{population}{The total number of population of the country}
#' \item{longitude}{The longitude of the country}
#' \item{latitude}{The latitude of the country}
#' \item{caseper10000}{the number of confirmed cases per 10,000 of people in the country}}
#' 
#' @source `tidycovid19` package on Github alongside with `countries.csv` taken from Google Developers
#' <https://github.com/joachim-gassen/tidycovid19>
#' <https://developers.google.com/public-data/docs/canonical/countries_csv>
"covid19total"