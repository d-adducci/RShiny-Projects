

library(shiny)
library(bslib)

# Script for Add control widgets exercise

# Define UI ----
ui <- page_sidebar(
  title = "censusvis",
  sidebar = sidebar(
                    # Originally ["Create demographic maps with information from the 2010 US Census.",]
                    helpText("Create demographic maps with information from the 2010 US Census."),
                    # Originally strong("Choose a variable to display"),
                    label = "Range of interest:",
                    selectInput(
                      "select",
                      "Choose a variable to display",
                      # Originally:
                      #choices = list("Percent White" = 1,"Percent Black" = 2,
                      #              "Percent Hispanic" = 3, "Percent Asian" = 4),
                      choices = 
                        list(
                          "Percent White",
                          "Percent Black",
                          "Percent Hispanic",
                          "Percent Asian"
                        ),
                      # Originally [selected = 1]
                      selected = "Percent White"
                    ),
                    sliderInput(
                      "slider1",
                      # Originally [strong("Range of interest:"),]
                      label = "Range of interest:",
                      min = 0,
                      max = 100,
                      value = c(0,100)
                    ),
                    position = "left")
)


# Define server logic ----
server <- function(output,input){
  
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
