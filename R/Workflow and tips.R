
### Exploring readxl package (part of tidyverse)

data <- read_excel("data.xlsx", sheet = "sheetNameOrNumber")

data <- read_excel("data.xlsx", na = "-")

data <- read_excel("data.xlsx", col_types = c("date", "skip", "guess", "numeric"))



# Unit8 Functions

calc_mean_bill <- function(island_name) {
  filtered_data <- subset(na.omit(data), species == "Adelie" & island == island_name)
  mean_bill_length <- mean(filtered_data$bill_length_mm)
  return(round(mean_bill_length, 2))
}

# Call the function for each island
calc_mean_bill("Torgersen")
calc_mean_bill("Biscoe")
calc_mean_bill("Dream")


# f1

my_f <- function(x) {
  y =  x * 234
  return (y)
}
my_f(311)

# f2
f2(3256, 8934)
f2 <- function(x,y) {
  z = x + y  
  return(z)
}

# Unit8 
# function-plot

scatterplot.f <- function(data, selected_island, selected_species) {
  filtered_data <- data %>%
    na.omit() %>%
    filter(species == selected_species, island == selected_island)
  
  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
  ) +
    geom_point() +
    labs(
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      title = paste("Penguin Bill Dimensions -", selected_species, "-", selected_island)
    )
  
  return(plot)
} 

source("R/functions.R")

scatterplot.f(data, "Torgersen", "Adelie")

# # Lesson 9

clean_data <-  readRDS("input/clean_data.rds")
citation("tidyverse")
