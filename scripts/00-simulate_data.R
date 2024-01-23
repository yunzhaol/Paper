#### Preamble ####
# Purpose: Simulates some data about time period of death and the number of 
#death that could resemble our dataset.
# Author: Yunzhao Li
# Date: 22 January 2024
# Contact: yunzhao.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Datasets: 
## - ("https://open.toronto.ca/dataset/death-registry-statistics/")

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Simulate data ####
set.seed(23)

simulated_death_data <-
  tibble(
    time_period = rep(c(sprintf("2023-0%s", c(1:9)), sprintf("2023-1%s", c(0:2))), times = 3),
    place_of_death = c(rep("Toronto", times = 36)),
    death_number =
      rpois(
        n = 36,
        lambda = 50
      ) # Draw 36 times from the Poisson distribution
  )

head(simulated_death_data)



