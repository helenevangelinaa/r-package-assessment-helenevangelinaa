#' SelectInput for the shiny Application
#' 
#' @description This function creates selectInput for the Shiny app based on the input
#' 
#' @return SelectInput with the specified id and choices
#' 
#' @param id The id of the selectInput, referring to the variable wanting to be included in the selectInput
#' @param choices The column with values wished to be presented on the selectInput
#' 
#' @examples 
#' \dontrun{selectInput01("region", covid19total$region)}
#'  
#' @export 
selectInput01 <- function(id, choices) {
  selectInput(id, label = paste0("which ", id, " do you want to view?"),  choices = c("All", choices),
              selected = "All")
}
