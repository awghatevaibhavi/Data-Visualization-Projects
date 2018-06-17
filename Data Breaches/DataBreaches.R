library(ggplot2)
library(gganimate)
theme_set(theme_bw())

setwd("/Users/vaibhaviawghate/Documents/Data Projects/Data Breaches")
data = read.csv("/Users/vaibhaviawghate/Documents/Data Projects/Data Breaches/Data Breaches.csv")


base <- data %>%
  plot_ly(x = ~records.lost, y = ~YEAR.2.,size = ~records.lost, 
          text = ~Entity, hoverinfo = "text") %>%
  layout(xaxis = list(type = "log"))

base %>%
  add_markers(color = ~records.lost, frame = ~YEAR.2., ids = ~Entity) %>%
  animation_button(
    x = 1, xanchor = "right", y = 0, yanchor = "bottom"
  ) %>%
  animation_slider(
    currentvalue = list(prefix = "YEAR ", font = list(color="red"))
  )