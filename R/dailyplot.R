#' COVID-19 plot function
#' 
#' @description This function creates daily COVID-19 plot based on the input
#'
#' @param input_function The input function referring to the selectInput (example: input$country)
#' @param input_name The name of the input wanting to be produced on the plot (confirmed cases, death, recovered)
#' @param variable_name The name of the variable wanting to be plotted on the y-axis (daily_death, daily_confirmed, daily_recovered)
#' 
#' @return A daily COVID-19 plot of daily cases, deaths or recovered based on the input
#' 
#' @importFrom magrittr %>%
#' 
#' @example 
#'  dailyplot(input$country, "confirmed cases", "daily_confirmed")
#' 
#' @export
dailyplot <- function(input_function, input_name, variable_name){
  
  if(input_function == "All")
  {dailyall <- covid19wrangled %>%
    dplyr::group_by(date) %>%
    dplyr::summarise(totalconfirmed = sum(confirmed),
              totaldeaths = sum(deaths),
              totalrecovered = sum(recovered)) %>%
    dplyr::mutate(confirmed_lag = lag(totalconfirmed),
           daily_confirmed = totalconfirmed - confirmed_lag,
           death_lag = lag(totaldeaths),
           daily_death = totaldeaths - death_lag,
           recovered_lag = lag(totalrecovered),
           daily_recovered = totalrecovered - recovered_lag)
  
  plot_all <- dailyall %>%
    ggplot2::ggplot(aes_string(x = "date",
               y= variable_name)) +
    ggplot2::geom_col(fill = "#F09366") +
    ggplot2::geom_line(size = 0, alpha = 0) +
    ggplot2::geom_smooth(color = "red", size = 1) +
    ggplot2::labs(x = "Date",
         y = (paste0("Daily number of ", input_name)),
         title = (paste0("Figure 3: Trend of Daily Number of ", input_name))) +
    ggplot2::theme(panel.background = element_rect(fill = "grey16"),
          plot.background = element_rect(fill = "grey16"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          plot.title = element_text(size = 12), 
          plot.title.position = "plot",
          text = element_text(color = "white"),
          axis.text = element_text(color = "white"),
          axis.line.x = element_line(color = "white",
                                     size = 0.6),
          axis.line.y = element_line(color = "white",
                                     size = 0.6))
  
  plotly::ggplotly(plot_all)  
  }
  
  else{
    dailydata <- covid19wrangled %>%
      dplyr::group_by(country) %>%
      dplyr::mutate(confirmed_lag = lag(confirmed),
             daily_confirmed = confirmed - confirmed_lag,
             death_lag = lag(deaths),
             daily_death = deaths - death_lag,
             recovered_lag = lag(recovered),
             daily_recovered = recovered - recovered_lag) %>%
      dplyr::filter(country == input_function)
    
    country_plot <- dailydata %>%
      ggplot2::ggplot(aes_string(x = "date",
                 y= variable_name)) +
      ggplot2::geom_col(fill = "#F09366") +
      ggplot2::geom_line(size = 0, alpha = 0) +
      ggplot2::geom_smooth(color = "red", size = 1) +
      ggplot2::labs(x = "Date",
           y = (paste0("Daily number of ", input_name)),
           title = (paste0("Figure 3: Trend of Daily Number of ", input_name))) +
      ggplot2::theme(panel.background = element_rect(fill = "grey16"),
            plot.background = element_rect(fill = "grey16"),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            plot.title = element_text(size = 12), 
            plot.title.position = "plot",
            text = element_text(color = "white"),
            axis.text = element_text(color = "white"),
            axis.line.x = element_line(color = "white",
                                       size = 0.6),
            axis.line.y = element_line(color = "white",
                                       size = 0.6))
    
    plotly::ggplotly(country_plot)}
}
