

install.packages("gtExtras")
install.packages("svglite")
library(gtExtras)
library(svglite)

palmerpenguins::penguins %>%
  gt_plt_summary()
mtcars |> 
  gt_plt_summary()



library(skim)
skim(iris)


# Load library and example dataset:
library(DT)
data(iris)

# Make a table
datatable(iris, filter = "top")

install.packages("gapminder")
library(ggplot2)
library(gapminder)

p <- gapminder %>%
  filter(year==1977) %>%
  ggplot( aes(gdpPercap, lifeExp, size = pop, color=continent)) +
  geom_point() +
  theme_bw()

library(plotly)

ggplotly(p)
