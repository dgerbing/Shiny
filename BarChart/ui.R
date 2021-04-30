library(shiny)

ui <- fluidPage(  # Define UI for app that draws the bar chart

  titlePanel("Bar Chart"),  # App title

  sidebarLayout(  # Sidebar layout with input and output definitions

    sidebarPanel(  # Sidebar panel for inputs

    selectInput(inputId = "myFill",
                label = "fill",
                choices = list(
                  "colors", "darkred", "slategray3", "magenta3", "darkseagreen2",
                  "reds", "rusts", "yellows",
                  "olives", "greens", "emeralds", "turquoises",
                  "aquas", "blues", "purples", "violets",
                  "magentas", "grays")
      ),

      selectInput(inputId = "myColor",
                  label = "color",
                  choices = list("off", "darkgray", "black", "gold")
      ),

      sliderInput(inputId = "myTrans",
                  label = "trans",
                  min = 0, max = 1, value = 0
      ),

      checkboxInput(inputId = "myHoriz",
                    label = "horiz",
                    value = FALSE
      ),

      selectInput(inputId = "myValues",
                  label = "values",
                  choices = list("%", "input", "off")
      ),

      selectInput(inputId = "myValuesColor",
                  label = "values_color",
                  choices = list("white", "gray", "darkgray", "black")
      ),


      selectInput(inputId = "myValuesPosition",
                  label = "values_position",
                  choices = list("in", "out")
      )

    ),

    mainPanel(  # Main panel for displaying outputs
      plotOutput(outputId = "myPlot")  # Output
    )

  )
)
