#' COVID-19 table function
#' 
#' @description This function creates a table by using the `DT` package
#'
#' @param data the dataset wanted to be put into the table
#' 
#' @return A table presenting data based on specified dataset
#' 
#' @importFrom magrittr %>%
#' 
#' @examples 
#'  \dontrun{covidtable(covid19total)}
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