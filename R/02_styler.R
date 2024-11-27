install.packages("styler")
library(styler)

cleaNDatA <- data %>%
  rename(ID = 1, Name = 2, Age = 3) %>%
  mutate(Age = ifelse(Age < 0, NA, Age)) %>%
  drop_na() %>%
  mutate(Age = as.integer(Age)) %>%
  select(-Name)

# Addins -> style current file  

cleaNDatA <- data %>%
  rename(ID = 1, Name = 2, Age = 3) %>%
  mutate(Age = ifelse(Age < 0, NA, Age)) %>%
  drop_na() %>%
  mutate(Age = as.integer(Age)) %>%
  select(-Name)


multipr <- function(a,b) {
  x = a + b 
  return (x)
}

multipr(3256, 8934)
