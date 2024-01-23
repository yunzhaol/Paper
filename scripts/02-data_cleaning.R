#### Preamble ####
# Purpose: Cleans the raw death registry statistics by simplifying names and selecting the relevant columns from the data set
# Author: Yunzhao Li
# Date: 23 January 2024
# Contact: yunzhao.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: 01-download_data.R


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####

cleaned_death_registry <-
  clean_names(raw_death_registry) |>
  mutate(time_period = ym(time_period)) |>
  filter(
    place_of_death == "Toronto",
    time_period %in% c(sprintf("2023-0%s-01", c(1:9)), "2023-10-01", "2023-11-01", "2023-12-01")
  ) |>
  select(time_period, death_licenses)

head(cleaned_death_registry)

#### Save data ####
write_csv(
  x = cleaned_death_registry,
  file = "cleaned_death_registry.csv"
)
