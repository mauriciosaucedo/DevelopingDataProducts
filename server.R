library(shiny)

library(caret)

data(ToothGrowth)

# Define server logic required to predict tooth growth
shinyServer(function(input, output) {

  modelFit <- train(len ~ ., method = "glm", data = ToothGrowth)

  modelpred <- reactive({
    suppInput <- input$supp 
    doseInput <- input$dose
    predict(modelFit, newdata=data.frame(supp=suppInput, dose=doseInput))
  })
  
  output$pred <- renderText({
    
    modelpred()
#    input$supp

  })
})
