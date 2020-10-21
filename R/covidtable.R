#' COVID-19 table function
#' 
#' @description This function creates a table by using the `DT` package
#'
#' @param data the dataset wanting to be put into the datatable
#' 
#' @return A daily COVID-19 plot of daily cases, deaths or recovered based on the input
#' 
#' @importFrom magrittr %>%
#' 
#' @example 
#'  covidtable(covid19wrangled)
#' 
#' @export
covidtable <- function(data){
  data %>%
  dplyr::select(-population,
         -latitude,
         -longitude) %>%
  DT::datatable(filter = 'top', 
            rownames = FALSE,
            caption = "Table 1: Summary Table of COVID-19 Cases in the World",
            options = list(pageLength = 5,
                           fnDrawCallback = htmlwidgets::JS(
                             "function(settings, json) {",
                             "$(this.api().table().header()).css({'font-size': '15px', 'background-color': '#F09366'});",
                             "$(this.api().tables().body()).css({'font-size': '14px'});",
                             
                             "}"
                           )
            ))
}