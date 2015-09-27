shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Wine Price Prediction"),
    
    sidebarPanel(
      numericInput('Age', 'Age of Wine (Year)', 0, min = 0, max = 200, step = 1),
      numericInput('AVGS', 'Avg Growing Season Temperature (Celsius)', 20, min = 0, max = 60, step = 1),
      numericInput('HarvestRain', 'Harvest Rain(mm)', 150, min = 0, max = 1000, step = 10),
      numericInput('WinterRain', 'Winter Rain(mm)', 500, min = 200, max = 1000, step = 10),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('Age(Year) entered as:'),
      verbatimTextOutput("inputAge"),
      h4('Average Growing Season Temperature(Celsius) entered as:'),
      verbatimTextOutput("inputAVGS"),
      h4('Harvest Rain(mm) entered as:'),
      verbatimTextOutput("inputHarvestRain"),
      h4('Winter Rain(mm) entered as:'),
      verbatimTextOutput("inputWinterRain"),
      h4('Which resulted in a prediction of Wine Price ($):'),
      verbatimTextOutput("prediction")
    )
  )
)