# Using web APIs

# setup -------------------------------------------------------------------

library(httr)
library(rinat)
library(googlesheets4)
library(googledrive)
library(tidyverse)

source('scripts/source_script.R')

# web api - httr ----------------------------------------------------------

'http://www.omdbapi.com/?apikey=6fa7876b&t=Zoolander'


# multiple movies ---------------------------------------------------------

# Movies:

c('Brazil',
  'Grand Budapest Hotel',
  'Harold and Maude',
  'The Life Aquatic',
  'Idiocracy',
  'The Royal Tenenbaums',
  'Zoolander')

GET('http://www.omdbapi.com/?apikey=6fa7876b&t=Harold and Maude')


# iNaturalist -------------------------------------------------------------

get_inat_obs(
  query = 'susquehanna') %>%
  as_tibble()


# googlesheets4 -----------------------------------------------------------






