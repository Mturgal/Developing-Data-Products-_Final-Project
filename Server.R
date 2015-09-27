library(shiny)
pricePrediction <- function(Age,AVGS,HarvestRain,WinterRain) -3.4299802+(0.6072093*AVGS) -(0.0039715*HarvestRain )+(0.0010755*WinterRain) +(0.0239308*Age)

shinyServer(
  function(input, output) {
    output$inputAge <- renderPrint({input$Age})
    output$inputAVGS <- renderPrint({input$AVGS})
    output$inputHarvestRain <-renderPrint({input$HarvestRain})
    output$inputWinterRain <- renderPrint({input$WinterRain})
    output$prediction <- renderPrint({pricePrediction(input$Age,input$AVGS,input$HarvestRain,input$WinterRain)})
  }
)