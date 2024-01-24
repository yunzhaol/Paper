#### Preamble ####
# Purpose: Tests the class and value of time_period and death_licenses.
# Author: Yunzhao Li
# Date: 22 January 2024
# Contact: yunzhao.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: 02-data_cleaning.R


#### Workspace setup ####
library(janitor)
library(lubridate)
library(tidyverse)

#### Test data ####
cleaned_death_registry$time_period |>
  unique() == c(sprintf("2023-0%s-01", c(1:9)), "2023-10-01", "2023-11-01", "2023-12-01")
cleaned_death_registry$time_period |> class() == "Date"
cleaned_death_registry$death_licenses |> class() == "numeric"
