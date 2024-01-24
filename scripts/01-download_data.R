#### Preamble ####
# Purpose: Downloads and saves the data from
# - ("https://open.toronto.ca/dataset/death-registry-statistics/")
# Author: Yunzhao Li
# Date: 22 January 2024
# Contact: yunzhao.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
raw_death_registry <-
  read_csv(
    here::here("inputs/data/Death Registry Statistics Data.csv"),
    show_col_types = FALSE
  )


#### Save data ####
write_csv(
  x = raw_death_registry,
  file = "raw_death_registry.csv"
)

head(raw_death_registry)
