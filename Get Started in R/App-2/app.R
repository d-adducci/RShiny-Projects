
# Recreating the 'Hello Shiny' example.

library(shiny)
library(bslib)

# Define UI for app that draws a histogram ----
ui <- page_sidebar(
  title = "title panel",
  sidebar = sidebar("Sidebar"),
  value_box(
    title = "Value box",
    value = 100,
    showcase = bsicons::bs_icon("bar-chart"),
    theme = "teal"
  ),
  card("Card"),
  card("Another card")
)

# Define server logic required to draw a histogram ----
server <- function(input,output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)