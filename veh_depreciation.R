library(tidyverse)
library(lubridate)
library(scales)


cal_dep_value <- function(ini_price, ini_year) {
  no_of_year <- year(Sys.Date()) - ini_year
  
  if (no_of_year == 1) {
    dep_value <- 0.9 * ini_price
  } else if (no_of_year == 2) {
    dep_value <- 0.9 * 0.9 * ini_price
  } else if (no_of_year == 3) {
    dep_value <- 0.9 * 0.9 * 0.85 * ini_price
  } else if (no_of_year == 4) {
    dep_value <- 0.9 * 0.9 * 0.85 * 0.85 * ini_price
  } else if (no_of_year == 5) {
    dep_value <- 0.9 * 0.9 * 0.85 * 0.85 * 0.85 * ini_price
  } else if (no_of_year == 6) {
    dep_value <- 0.9 * 0.9 * 0.85 * 0.85 * 0.85 * 0.85 * ini_price
  } else if (no_of_year > 6) {
    dep_value <- 0.1 * ini_price
  }
  
  print(paste0("Depreciated value of the vehicle is Nu. ", 
               scales::label_comma(accuracy = .2) (dep_value)), 
        quote = FALSE)
  
}

cal_dep_value(1400000, 2011)


