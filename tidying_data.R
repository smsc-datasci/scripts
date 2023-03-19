# setup -------------------------------------------------------------------

library(tidyverse)

source('scripts/source_script.R')

# read in data ------------------------------------------------------------

untidy_data <-
  read_rds('data/raw/untidy_data.rds')

# Send items in the list to the global environment:

list2env(
  untidy_data,
  envir = .GlobalEnv)

# Note: The above could have also been written as:

list2env(
  read_rds('data/raw/untidy_data.rds'),
  envir = .GlobalEnv)


# Each variable forms a column --------------------------------------------

# When values aren't atomic:

badDate

# When a single variable occupies multiple columns:

really_bad_date

# When there are transitive columns:

badYear


# Each observation forms a row --------------------------------------------

# Multiple observations per row:

untidyFrame

# Multiple rows per observation:

dfTooLong

# Each level of observation forms a table ---------------------------------

badBandingRecord




