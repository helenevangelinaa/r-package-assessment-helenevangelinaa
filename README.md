
# covid19shiny
<!-- badges: start -->
[![R build status](https://github.com/etc5523-2020/r-package-assessment-helenevangelinaa/workflows/R-CMD-check/badge.svg)](https://github.com/etc5523-2020/r-package-assessment-helenevangelinaa/actions)
<!-- badges: end -->

The goal of covid19shiny is to provide users with a shiny dashboard presenting the state of COVID-19 in the world, which is enhanced with user interactions.

## Installation

You can install the `covid19shiny` package with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-helenevangelinaa")
```

## Example

This is a basic example on how to launch the shiny dashboard:

``` r
library(covid19shiny)
launch_app()
```

