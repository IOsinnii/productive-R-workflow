getwd(
)

read_xlsx("./input/data.xlsx")


clean_data <- data |>
  slice(-c(23, 48))

saveRDS(clean_data, file= "input/clean_data.rds")
