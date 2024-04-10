

scatterplot.f <- function(data, selected_species, colors) {
  filtered_data <- data %>%
    na.omit() %>%
    filter(species == selected_species)
  
  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = bill_length_mm, y = bill_depth_mm)
  ) +
    geom_point(color=colors) +
    labs(
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      title = selected_species,
      scale_shape_manual(values = c("Adelie" = 16, "Chinstrap" = 17, "Gentoo" = 18))
    )
  
  return(plot)
} 

