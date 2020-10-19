#' SelectInput for the shiny app
#' 
#' @param A function to add selectInput on the shiny app
#' 
#' @export 
selectInput01 <- function(id, choices) {
  selectInput(id, label = paste0("which ", id, " do you want to view?"),  choices = c("All", choices),
              selected = "All")
}
