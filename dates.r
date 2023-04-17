
# setup -------------------------------------------------------------------

library(tidyverse) 
library(lubridate)

source('scripts/source_script.R')

read_rds('data/raw/dates.rds') %>% 
  list2env(.GlobalEnv)


# good dates --------------------------------------------------------------

good_dates


# bad dates - us dates ----------------------------------------------------

us_dates


# bad dates - european dates ----------------------------------------------

european_dates


# Copy and paste the code block we created above two times. For the first code
# block, generate a date column using name_month. For the second, create a date
# column using abbr_month.



# mixed date format -------------------------------------------------------

test_dates <-
  mixed_month_names$date[1:6]


# Subset the data frame to just dates that start with numbers. Then replace the
# date column with a properly formatted date object using the function dmy.

mixed_month_names


# avoiding transitive dependence ------------------------------------------

good_dates

# Without making a new column, filter the date to volcanic eruptions that
# occurred before 1990. 

