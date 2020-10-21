#' Running the Shiny Application
#' 
#' @description This function will runs the COVID-19 Shinydashboard which presents shinydashboard of the state of COVID-19 in the world 
#'   
#' @return Shinydashboard illustrating the state of COVID-19 cases around the world, with user interactions provided  
#'  
#'
#' @examples
#' \dontrun{ 
#' launch_app()}
#'     
#' @export
launch_app <- function(){
  directory <- system.file("app", package = "covid19shiny")
  if (directory == "") {
    stop("Could not find directory. Try re-installing `covid19shiny`.", call. = FALSE)
  }
  
  shiny::runApp(directory, display.mode = "normal")
}