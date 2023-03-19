# Reading, exploring, and writing data
# Author: Brian S. Evans
# Date created: 2023-03-06
# Last modified on 2023-03-06

# In this video lesson, we will explore:
# - How to read data into R
# - Some initial data exploration steps
# - How to save files to your computer

# setup -------------------------------------------------------------------

# Load all libraries that will be used more than once:

library(tidyverse)

# List files in a directory:

list.files()

# reading data ------------------------------------------------------------

# Read in a vector with read_lines():

read_lines("data/raw/four_instruments.txt")

# Read in tabular csv files with read_csv():

read_csv("data/raw/iris.csv")

# Table troubles ...

read_csv("data/raw/API_EN.ATM.CO2E.PC_DS2_en_csv_v2_2764620.csv")

# The RDS file:

read_rds("data/raw/iris.rds")

read_rds('data/raw/four_instruments.rds')

# Read an Excel file with the readxl package function read_xlsx:

readxl::excel_sheets('data/raw/portal.xlsx')

readxl::read_excel("data/raw/portal.xlsx")

# Now you! Modify the code above such that the column names are Plot, Date
# collected, Family, Genus Species, and Weight.

# To store data to our computer's memory, assign a name to the global
# environment:

four_instruments <- 
  read_lines("data/raw/four_instruments.txt")

iris <- 
  read_rds("data/raw/iris.rds")

portal_observations <- 
  readxl::read_excel("data/raw/portal.xlsx")

# If you are done with a file, be sure to remove the assigned name from the
# global environment!

rm(portal_observations)

# exploring data ----------------------------------------------------------

# Heads and tails:

head(iris)

tail(iris)

# Length can be used to determine the number of values in a vector:

length(four_instruments)

# Find out how many records (rows) there are in a data frame with nrow():

nrow(iris)

# Notice what happens if we ask the length() of a data frame (why?):

length(iris)

# We can determine the number of variables (columns) in a data frame with
# ncol():

ncol(iris)

# We can view the structure of a data object with str():

str(iris)

str(four_instruments)

# We can view the number of character records using table(): 

table(iris$species)

# To arrange a vector, use sort():

sort(four_instruments)

# Use arrange() to sort a table from smallest to largest values:

arrange(iris, sepal_length)

# Use arrange() with desc() to sort a table from largest to smallest values:

arrange(
  iris,
  desc(sepal_length))

# To determine the unique values in a vector, use unique():

unique(iris$species)

# Because iris species is a factor, we can use the "levels" argument to 
# determine the unique values in iris$species:

levels(iris$species)

# A bad (but sometimes useful!) habit to avoid (why?):

view(four_instruments)

view(iris)

# exploring data ... summary statistics -----------------------------------

# We can view summary information of a data object with summary:

summary(iris)

# You can also view individual summary statistics:

min(iris$sepal_length)

max(iris$sepal_length)

mean(iris$sepal_length)

median(iris$sepal_length)

var(iris$sepal_length)

sd(iris$sepal_length)

# How might we determine a summary statistic for a single species?

iris

# (of course, we"ll soon learn a much easier way to do this!)

# writing data ------------------------------------------------------------

# Write a tabular data file with write_csv():

write_csv(
  iris, 
  "data/raw/temp.csv")

# Now you! Use list.files() with the pattern "temp" to see if you successfully
# created the file.

# We can remove a file from our computer with file.remove():

file.remove("data/raw/temp.csv")

# DO NOT write a tabular data file with write.csv!

write.csv(
  iris, 
  "data/raw/temp.csv")

# If you will only use the file in R, use write_rds():

write_rds(
  iris, 
  "data/raw/temp.rds")

