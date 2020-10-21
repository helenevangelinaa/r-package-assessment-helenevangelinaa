library(shiny)

test_that("selectInput01", {
  
  a <- c("region")
  b <- covid19total$region
  
  expect_equal(selectInput01(a, b),
               selectInput(a, label = paste0("which ", a, " do you want to view?"),  choices = c("All", b),
                           selected = "All"))
})
