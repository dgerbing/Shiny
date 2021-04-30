library(shiny)
library(lessR)

d <- Read("data/employee.xlsx", quiet=TRUE)

server <- function(input, output) {

  output$myPlot <- renderPlot({

     BarChart(Dept, fill=input$myFill, color=input$myColor, trans=input$myTrans,
              horiz=input$myHoriz,
              values=input$myValues, values_color=input$myValuesColor,
              values_position=input$myValuesPosition)

  })

}