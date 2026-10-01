install.packages("nycflights13")
library(nycflights13)
library(tidyverse)
library(janitor)


# 1. Load data
data(flights)

flights_clean <- flights |>
  # 2. Clean column names
  clean_names() |>
  # 3. rename key variables
  rename(
    departure_time = dep_time,
    arrival_time = arr_time
  )
