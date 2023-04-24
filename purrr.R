
# setup -------------------------------------------------------------------

library(tidyverse)

source('scripts/source_script.R')

# Read in the data:

iris <-
  read_csv('data/raw/iris.csv')

# petal length by species, indexing with for loops ------------------------

# For loop:

mean_petal_lengths <-
  vector(
    'list',
    length = length(unique(iris$species)))

for(i in 1:length(unique(iris$species))) {
  # Split:
  
  iris_split <- 
    iris %>% 
    filter(species == unique(iris$species)[i])
  
  # Apply:
  
  mean_petal_lengths[[i]] <-
    tibble(
      species = unique(iris$species)[i],
      value = mean(iris_split$petal_length))
}

# Combine:

bind_rows(mean_petal_lengths)

# petal length by species, indexing with a map ----------------------------

# Map:



# Map by row:



# petal length by species, variables with a for loop ----------------------

# For loop:

mean_petal_lengths_by_value <-
  vector(
    'list',
    length = length(unique(iris$species)))

for(x in unique(iris$species)) {
  # Split:
  
  iris_split <- 
    iris %>% 
    filter(species == x)
  
  # Apply:
  
  mean_petal_lengths_by_value[[x]] <-
    tibble(
      species = x,
      value = mean(iris_split$petal_length))
}

# Combine:

bind_rows(mean_petal_lengths_by_value)

# petal length by species, variables with a map ----------------------

# Map by row with a variable:



# Map by row, a bit more concise:



# Map by row, now with a tilde!



# But of course ... -------------------------------------------------------

iris %>% 
  group_by(species) %>% 
  summarize(value = mean(petal_length))
