
library(readr)
library(readxl)
library(stringr)
library(tidyr)
library(lubridate)

# Get data set
airbnb_price <- read.csv("~/airbnb/airbnb_price.csv")

# split string price and dollars
airbnb_price <- airbnb_price %>% separate(price, into = c("number", "currency"), sep = " ")# nolint

# Create character vector
char_vector <- c(airbnb_price$number)

# Turn to numeric
numeric_vector <- as.numeric(char_vector)

# Calculate the mean of the numeric vector # nolint
avg_price <- mean(numeric_vector)

print(avg_price)
