#' covid19wrangled dataset
#'
#' This dataset contains the wrangled dataset taken from `download_merged_data` from `tidycovid19` package
#' 
#' @format A dataset with 49410 rows and 7 columns: 
#' \describe{
#' \item{country}{The country name}
#' \item{date}{The date of observations}
#' \item{confirmed}{The total number of confirmed cases of the country on the specific date}
#' \item{deaths}{The total number of deaths of the country on the specific date}
#' \item{recovered}{The total number of recovered cases of the country on the specific date}
#' \item{region}{The region where the country is located (e.g. South Asia)}}
#' 
#' 
#' @source `tidycovid19` package on Github
#' <https://github.com/joachim-gassen/tidycovid19>
"covid19wrangled"