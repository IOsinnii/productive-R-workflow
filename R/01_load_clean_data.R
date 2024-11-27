getwd()
library(tidyverse)
library(readxl)

data <- read_xlsx("./input/data.xlsx", na = 'NA', sheet = 2)


clean_data <- data %>% 
  slice(-c(23, 48))

saveRDS(clean_data, file= "input/clean_data.rds")
