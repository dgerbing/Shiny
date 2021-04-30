library(shiny)
library(lessR)

d <- Read("https://github.com/dgerbing/data/raw/master/employee.csv", quiet=TRUE)

server <- function(input, output) {

  output$myPlot <- renderPlot({

     Plot(Years, Salary,
          fill=input$myFill, color=input$myColor, trans=input$myTrans,
          size=input$mySize, shape=input$myShape, plot_errors=input$myErrors,
          fit=input$myFit, ellipse=input$myEllipse, enhance=input$myMDcut)
  })

}
