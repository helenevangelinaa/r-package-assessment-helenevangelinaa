test_that("multiplication works", {
  
  x <- covid19total
  
  expect_equal(
    covidtable(x),
    x %>%
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
  )
})
