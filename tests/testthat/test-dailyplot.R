library(ggplot2)

test_that("dailyplot erros", {
 
  a <- c("input$country")
  b <- c("confirmed cases")
  c <- c("daily_confirmed")
  
  expect_error(dailyplot(NULL))
  expect_error(dailyplot(""))
  expect_error(dailyplot(input_name = ""))
  expect_error(dailyplot(input_function = ""))
  expect_error(dailyplot(variable_name = ""))
  expect_error(dailyplot("", b, c))
  expect_error(dailyplot(a, "", c))
  expect_error(dailyplot(a, b, ""))
  
})


