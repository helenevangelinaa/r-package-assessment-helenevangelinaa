#' Running the Shiny Application
#' 
#' @description This function will runs the COVID-19 Shinydashboard which presents shinydashboard of the state of COVID-19 in the world 
#'   
#' @return Shinydashboard illustrating the state of COVID-19 cases around the world, with user interactions provided  
#'  
#'
#' @example 
#' launch_app()
#'     
#' @export
launch_app <- function(){
  shiny::runApp("inst/app/app.R")
}