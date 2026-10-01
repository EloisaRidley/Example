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
# 4. Summarise key numeric columns
flights_clean |>
  summarise(
    avg_dep_delay = mean(dep_delay, na.rm = TRUE),
    avg_arr_delay = mean(arr_delay, na.rm = TRUE),
    avg_air_time = mean(air_time, na.rm = TRUE)
  )
# 5. Count unique values in carrier and origin
flights_clean |> count(carrier)
flights_clean |> count(origin)