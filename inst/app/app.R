library(shinydashboard)
library(shiny)
library(tidycovid19)
library(ggplot2)
library(plotly)
library(leaflet)
library(sf)
library(maps)
library(DT)
library(dplyr)
library(rgdal)
library(here)

globalVariables(names("covid19shiny"))
utils::globalVariables(c("covid19wrangled", "confirmed", "deaths", "recovered", "lag", "totalconfirmed", "confirmed_lag",
                         "totaldeaths", "death_lag", "totalrecovered", "recovered_lag", "aes_string", "element_rect", "element_blank", "element_text",
                         "element_line", "country", "selectInput"))

options(scipen = 999)

#map data
world <- st_as_sf(map("world", plot = FALSE, fill = TRUE))
worldtbl <- as_tibble(world)

#ui
header <- dashboardHeader(title = "COVID-19 Overview")

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("About", tabName = "about", icon = icon("users")),
    menuItem("Instructions", tabName = "instructions", icon = icon("list-alt")),
    menuItem("References", tabName = "ref", icon = icon("th"))
  ))

body <- dashboardBody(
  tabItems(
    tabItem(tabName = "dashboard",
            tabsetPanel(type = "tabs",
                        tabPanel("Map and Table",
                                 
                                 fluidRow(
                                   column(3,
                                          selectInput01("region", covid19total$region),
                                          sliderInput("plotcase", "Hide countries with cases more than:",
                                                      min = 0, max = 8000000, value = 8000000)),
                                   column(9,
                                          leafletOutput("covidmap", height = 500))
                                 ),
                                 br(),
                                 fluidRow(
                                   DT::DTOutput("covidtable")
                                 )
                        ),
                        tabPanel("Figures",
                                 fluidRow(
                                   column(3,
                                          selectInput01("regions", covid19total$region),
                                          "Show visualisation of cases:",
                                          actionButton("button", "By Region"),
                                          actionButton("button2", "By Country")
                                   ),
                                   column(9,
                                          plotlyOutput("covidplot"))
                                 ),
                                 fluidRow(
                                   column(3,
                                          selectInput01("country", covid19total$country),
                                          plotlyOutput("map2")),
                                   column(9,
                                          tabsetPanel(type = "tabs",
                                                      tabPanel("Daily confirmed cases", plotlyOutput("countryplot")),
                                                      tabPanel("Daily deaths", plotlyOutput("dailydeath")),
                                                      tabPanel("Daily recovered", plotlyOutput("dailyrecovered")),
                                                      tabPanel("Summary plot", plotlyOutput("summaryplot"))
                                          )
                                   )
                                 ))
            )
    ),
    tabItem(tabName = "about",
            box(HTML('<h1>', '<strong>', '<u>', "About", '</strong>', '</u>',  '</h1>', 
                     '<p>', '<strong>', "Author:", '</strong>', "Helen Evangelina.", '</p>',
                     '<p>', "The purpose of this shiny app is to allow users to explore data related to COVID-19 in the world.
                            This shiny app consists of visualisations related to COVID-19 which can be updated according to the user inputs to facilitate interactive visualisation.
                            As COVID-19 has currently became a global trend since it spread worldwide from China's Hubei Province, this shiny dashboard is created to help users to understand the
                            state of COVID-19 in the world, which consists of the confirmed cases, deaths, and recovered. By looking at the visualisations,
                            users would be able to gain an insight of how the COVID-19 cases is affecting the world. Users are also able to analyse the COVID-19 cases for one specific country,
                            which can be done by specifying which country wants to be looked at from the drop-down menu. Therefore, in addition to worldwide trend, users can also look at 
                            which countries are doing a great job in flattening the curve, and so on.", '</p>',
                     '<p', "A choropleth map is provided which is colored by the cases per 10,000 people. Interactivity is provided in order to facilitate 
                            user interactions - so that users obtain a deeper understanding of the COVID-19 trend. Allowing users to interactively engage in the visualisations.", '</p>'), width = 12)),
    tabItem(tabName = "instructions",
            box(HTML('<h1>', '<strong>', '<u>', "Explanations on How to Use the App", '</strong>', '</u>', '</h1>', 
                     '<p>', "There are some interactions that can be done in this app. The visualisations are in the “Dashboard” side-tab. The dashboard consists of two tabs:", '</p>',        
                     '<li>', "“Map and Table” which consists of a map and a summary table", '</li>',
                     '<li>', "“Figures”, containing the graphs", '</li>',
                     '<p>', "The map and table provide an overview of the state of COVID-19 cases in the world, while the figures in the second tab further explain the COVID-19 cases in more details in where users can navigate which country they want to look at. ", '</p>',
                     '<h2>', '<strong>', "First tab", '</strong>', '</h2>',
                     '<p>', "The map is illustrating the total number of COVID-19 cases. The size of the dots is proportional to the total number of confirmed cases in that country with bigger dots representing higher confirmed cases. Alongside with the dots, the map is coloured according to the number of cases per 10,000 people, which is calculated by the total number of cases divided by the population. The darker the colour shows that the country has a higher cases per 10,000 people. The reason this is added to the map is because some countries might have high number of cases due to the high number of population, therefore looking at the cases per 10,000 is useful in understanding which countries have higher number of cases in proportion to their population.
                   The map is enhanced with a pop-up label when the mouse is being hovered over a country, showing the details of the country.", '</p>',
                     '<p>', "The table is showing a summary of COVID-19 cases for each country with total numbers of confirmed cases, deaths, and recovered, alongside with the region and case per 10,000. The map provides a graphical visualisation while the table supplements the map by allowing users to dive deeper into the numbers and examine the values.", '</p>',
                     '<p>', "The map and table can be updated by using the drop-down menu and the slider input. Users can choose which region want to be viewed by choosing one of the regions from the drop-down menu. When a certain region is chosen, the map and table would only show the chosen region. The slider input would filter the data to only the countries with total cases lower than the number selected. These interactions are useful so that users can look at the overview of COVID-19 in more details.", '</p>',
                     '<h2>', '<strong>', "Second tab", '</strong>', '</h2>',
                     '<p>', "Figure 1 is showing the overall trend of confirmed cases by country, coloured by region. The drop-down menu in the left side is the same as the drop-down menu in the first tab, which is used to select the region. When a specific region is chosen, Figure 1 would only show the countries belong to that specific region. This is useful for comparing only the countries located in one certain region.
                   Below the drop-down menu is clickable buttons, in where users can choose whether to view the line graph by country or by region. When the", '<strong><i>', "By Region", '</strong></i>', "button is clicked, the line graph would show the trend of the total cases in that region. This is useful so that users would be able to compare which the total cases by region. When the", '<strong><i>', "By Country", '</strong></i>', "button is clicked, the graph would change back on showing the confirmed cases per country.", '</p>',
                     '<p>', "Figure 2 illustrates the trend of daily confirmed cases with the world total as the default. On the left side of figure 2 is another drop-down menu in where users can select which country they want to look at in more details. When a specific country is selected, Figure 2 would change to show only the trend of daily confirmed cases for only that country.
                            Below the drop-down menu is another map in where users can click on the desired country to view the graphs to that specific country. This works the same as the drop-down menu, however this is added to provide more flexibility for users. Besides the “Daily confirmed cases” tab, there are “Daily deaths” and “Daily recovered” tab which 
                   show the trend of daily deaths and daily recovered which works the same as Figure 2 (can be filtered to the chosen country).", '</p>',
                     '<p>', "Lastly, Figure 5 can be viewed by clicking the fourth tab. This figure is a summary plot of the overall trend of COVID-19, in where the total confirmed, deaths, and recovered can be analysed. This graph can also be filtered by country.", '</p>',
                     '<p>', "Visualising the trend per country provides a clearer visualisation on the trend in one country in more details and users would be able to analyse which countries are doing a great job in flattening the curve and so on.", '</p>'
            ), width = 12)
    ),
    tabItem(tabName = "ref",
            box(HTML('<h1>', '<strong>', '<u>', "References", '</strong>', '</u>', '</h1>', 
                     '<p>', "R packages used in this app include:", '</p>',
                     '<p>', "  Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson (2020). shiny: Web Application
  Framework for R. R package version 1.5.0. https://CRAN.R-project.org/package=shiny", '</p>',
                     '<p>', "  Winston Chang and Barbara Borges Ribeiro (2018). shinydashboard: Create Dashboards with 'Shiny'. R
  package version 0.7.1. https://CRAN.R-project.org/package=shinydashboard", '</p>',
                     '<p>', " Wickham et al., (2019). Welcome to the tidyverse. Journal of Open Source Software, 4(43), 1686,
  https://doi.org/10.21105/joss.01686", '</p>',
                     '<p>', " H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.", '</p>',
                     '<p>', "  C. Sievert. Interactive Web-Based Data Visualization with R, plotly, and shiny. Chapman and Hall/CRC
  Florida, 2020.", '</p>',
                     '<p>', "Joe Cheng, Bhaskar Karambelkar and Yihui Xie (2019). leaflet: Create Interactive Web Maps with the
  JavaScript 'Leaflet' Library. R package version 2.0.3. https://CRAN.R-project.org/package=leaflet", '</p>',
                     '<p>', " Pebesma, E., 2018. Simple Features for R: Standardized Support for Spatial Vector Data. The R Journal
  10 (1), 439-446, https://doi.org/10.32614/RJ-2018-009", '</p>',
                     '<p>', "  Original S code by Richard A. Becker, Allan R. Wilks. R version by Ray Brownrigg. Enhancements by
  Thomas P Minka and Alex Deckmyn. (2018). maps: Draw Geographical Maps. R package version 3.3.0.
  https://CRAN.R-project.org/package=maps", '</p>',
                     '<p>', "Yihui Xie, Joe Cheng and Xianying Tan (2020). DT: A Wrapper of the JavaScript Library 'DataTables'. R
  package version 0.15. https://CRAN.R-project.org/package=DT", '</p>',
                     '<p>', "Roger Bivand, Tim Keitt and Barry Rowlingson (2020). rgdal: Bindings for the 'Geospatial' Data
  Abstraction Library. R package version 1.5-16. https://CRAN.R-project.org/package=rgdal", '</p>',
                     '<p>', "Joachim Gassen (2020). tidycovid19: Download, Tidy and Visualize Covid-19 Related Data. R package
  version 0.0.0.9000.", '</p>',
                     '<br>',
                     '<p>', "Besides the tidycovid19 data, additional datasets used include:", '</p>',
                     '<p>', "Google Developers. (2012). countries.csv. Retrieved from https://developers.google.com/public-data/docs/canonical/countries_csv", '</p>',
                     '<p>', "Sandvik, Bjorn. (2009). World Borders Dataset. Retrieved from http://thematicmapping.org/downloads/world_borders.php", '</p>',
            ), width = 12)
    )
    
  ),
  tags$head(tags$style(HTML('
      .content-wrapper {
        background-color: #FAF2EF 
      }
      
      .irs-bar,
.irs-bar-edge,
.irs-single,
.irs-grid-pol {
  background: red;
  border-color: red;
}
    '))))

ui <- dashboardPage(header, sidebar, body,
                    skin = "red")

#server
server <- function(input, output, session) {
  
  regiondata <- reactive({
    region_filtered <- covid19total
    
    if(input$region != 'All')
      region_filtered <- covid19total %>%
        filter(region == input$region)
    
    region_filtered
  })
  
  filterdata <- reactive ({
    data <- regiondata()
    
    if(input$plotcase != 0)
      data <- regiondata() %>%
        filter(confirmed <= input$plotcase)
    data
  })
  
  output$covidmap <- renderLeaflet({
    
    pal <- colorQuantile("Reds", covid19total$confirmed)
    
    palpolygon <- colorNumeric(palette =  "Oranges", domain = covid19total$caseper10000)
    
    labs <- lapply(seq(nrow(filterdata())), function(i) {
      paste0( '<p>', '<strong>', "Country", ": ", '</strong>', filterdata()[i, "country"], '<p></p>',
              '<strong>', "Total confirmed cases", ": ", '</strong>', filterdata()[i, "confirmed"], '<p></p>', 
              '<strong>', "Total deaths:", " ", '</strong>', filterdata()[i, "deaths"], '<p></p>',
              '<strong>', "Total recovered:", " ", '</strong>', filterdata()[i, "recovered"], '<p></p>',
              '<strong>', "Case per 10,000:", " ", '</strong>', filterdata()[i, "caseper10000"], '<p></p>',
              '<strong>', "Region:", " ", '</strong>', filterdata()[i, "region"])
    })
    
    
    leaflet(worldshp) %>% addTiles() %>%
      addProviderTiles(providers$Stamen.Toner) %>%
      addPolygons(stroke = FALSE,
                  smoothFactor = 0.4,
                  fillOpacity = 0.7, 
                  fillColor = ~palpolygon(covid19total$caseper10000)) %>%
      addLegend(values =~ covid19total$caseper10000, pal = palpolygon, title = "Cases per 10,000") %>%
      addCircles(data = filterdata(),
                 ~longitude, 
                 ~latitude, 
                 weight = 1,
                 radius = ~(filterdata()$confirmed)^(1/4)*10000,
                 popup = ~as.character(filterdata()$country),
                 color = "#7777",
                 fillColor = ~pal(filterdata()$confirmed), 
                 fillOpacity = 0.6,
                 label = lapply(labs, htmltools::HTML)) %>%
      setView(40, 40, zoom = 1.45)
    
  })
  
  filterdataall <- reactive({
    region <- covid19wrangled
    
    if(input$regions != 'All')
      region <- covid19wrangled %>%
        filter(region == input$regions)
    
    region
  })
  
  
  
  output$map2 <- renderPlotly({
    
    plotmap <- ggplot(data = worldtbl, aes(geometry = geom)) +
      geom_sf() +
      geom_point(data = covid19total,
                 aes(x = longitude,
                     y = latitude,
                     label = country), color = "red",
                 inherit.aes = FALSE) +
      theme_void() +
      theme(axis.line = element_blank(),
            panel.background = element_rect(fill = "transparent"),
            plot.background = element_rect(fill = "transparent", color = NA))
    
    ggplotly(plotmap)
  })
  
  output$covidplot <- renderPlotly({
    covidplot <- filterdataall() %>%
      ggplot(aes(x = date,
                 y = confirmed,
                 group = country,
                 color = region)) +
      geom_line() + 
      scale_color_brewer(palette = "Dark2") +
      ylab("Total confirmed cases") +
      xlab("Date") +
      labs(title = "Figure 1: Trend of Confirmed Cases by Country") +
      theme(panel.background = element_rect(fill = "grey16"),
            plot.background = element_rect(fill = "grey16"),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            plot.title = element_text(size = 12), 
            plot.title.position = "left",
            legend.text = element_text(color = "black"),
            text = element_text(color = "white"),
            axis.text = element_text(color = "white"),
            axis.line.x = element_line(color = "white",
                                       size = 0.6),
            axis.line.y = element_line(color = "white",
                                       size = 0.6))
    ggplotly(covidplot, source = "B")
  })
  
  observeEvent(input$button,{
    output$covidplot <- renderPlotly({
      regiondat <- filterdataall() %>%
        group_by(region, date) %>%
        summarise(confirmed = sum(confirmed),
                  deaths = sum(deaths),
                  recovered = sum(recovered))
      
      covidplot <- regiondat %>%
        ggplot(aes(x = date,
                   y = confirmed,
                   color = region)) +
        geom_line() + 
        scale_color_brewer(palette = "Dark2") +
        ylab("Total confirmed cases") +
        xlab("Date") +
        labs(title = "Figure 1: Trend of Confirmed Cases by Country") +
        theme(panel.background = element_rect(fill = "grey16"),
              plot.background = element_rect(fill = "grey16"),
              panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              plot.title = element_text(size = 12), 
              plot.title.position = "left",
              legend.text = element_text(color = "black"),
              text = element_text(color = "white"),
              axis.text = element_text(color = "white"),
              axis.line.x = element_line(color = "white",
                                         size = 0.6),
              axis.line.y = element_line(color = "white",
                                         size = 0.6))
      ggplotly(covidplot, source = "B")
    })
  })
  
  observeEvent(input$button2,{
    output$covidplot <- renderPlotly({
      
      covidplot <- filterdataall() %>%
        ggplot(aes(x = date,
                   y = confirmed,
                   group = country,
                   color = region)) +
        geom_line() + 
        scale_color_brewer(palette = "Dark2") +
        ylab("Total confirmed cases") +
        xlab("Date") +
        labs(title = "Figure 1: Trend of Confirmed Cases by Country") +
        theme(panel.background = element_rect(fill = "grey16"),
              plot.background = element_rect(fill = "grey16"),
              panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              plot.title = element_text(size = 12), 
              plot.title.position = "left",
              legend.text = element_text(color = "black"),
              text = element_text(color = "white"),
              axis.text = element_text(color = "white"),
              axis.line.x = element_line(color = "white",
                                         size = 0.6),
              axis.line.y = element_line(color = "white",
                                         size = 0.6))
      ggplotly(covidplot, source = "B")
    })
  })
  
  observeEvent(event_data('plotly_click'), {
    clickdf <- event_data('plotly_click')
    country <- filter(covid19total, longitude==clickdf$x, latitude==clickdf$y) %>%
      pull(country)
    updateSelectInput(session, "country", selected = country)
  })
  
  
  output$countryplot <- renderPlotly({
    dailyplot(input$country, "confirmed cases", "daily_confirmed")})
  
  output$dailydeath <- renderPlotly({
    dailyplot(input$country, "death", "daily_death")})
  
  
  output$dailyrecovered <- renderPlotly({
    dailyplot(input$country, "recovered", "daily_recovered")})
  
  output$summaryplot <- renderPlotly({
    if(input$country == "All")
    {covid19longall <- covid19wrangled %>%
      pivot_longer(cols = confirmed:recovered,
                   names_to = "type",
                   values_to = "number") %>%
      group_by(date, type) %>%
      summarise(total = sum(number))
    
    summary_plotall <- ggplot(covid19longall,
                              aes(x = date,
                                  y = total,
                                  fill = type)) +
      geom_area() +
      scale_fill_brewer(palette = "YlOrRd") +
      #scale_fill_manual(values = c('#F09366', 'red', '#EC7085')) +
      labs(y = "Total number of cases",
           x = "Date",
           title = "Figure 5: Summary Plot of COVID-19 Cases") +
      theme(panel.background = element_rect(fill = "grey16"),
            plot.background = element_rect(fill = "grey16"),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            plot.title = element_text(size = 12), 
            plot.title.position = "plot",
            legend.text = element_text(color = "black"),
            text = element_text(color = "white"),
            axis.text = element_text(color = "white"),
            axis.line.x = element_line(color = "white",
                                       size = 0.6),
            axis.line.y = element_line(color = "white",
                                       size = 0.6))
    
    ggplotly(summary_plotall)
    }
    
    else{
      covid19long <- covid19wrangled %>%
        filter(country == input$country) %>%
        pivot_longer(cols = confirmed:recovered,
                     names_to = "type",
                     values_to = "number") %>%
        group_by(date, type) %>%
        summarise(total = sum(number))
      
      summary_plot <- ggplot(covid19long,
                             aes(x = date,
                                 y = total,
                                 fill = type)) +
        geom_area() +
        scale_fill_brewer(palette = "YlOrRd") +
        #scale_fill_manual(values = c('#F09366', 'red', '#EC7085')) +
        labs(y = "Total number of cases",
             x = "Date",
             title = "Graph 5: Summary Plot of COVID-19 Cases") +
        theme(panel.background = element_rect(fill = "grey16"),
              plot.background = element_rect(fill = "grey16"),
              panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              plot.title = element_text(size = 12), 
              plot.title.position = "plot",
              legend.text = element_text(color = "black"),
              text = element_text(color = "white"),
              axis.text = element_text(color = "white"),
              axis.line.x = element_line(color = "white",
                                         size = 0.6),
              axis.line.y = element_line(color = "white",
                                         size = 0.6))
      
      ggplotly(summary_plot)
    }
  })
  
  output$covidtable <- DT::renderDataTable({
    filterdata() %>%
      select(-population,
             -latitude,
             -longitude) %>%
      datatable(filter = 'top', 
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
  })
}

shinyApp(ui, server)
