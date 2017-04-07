#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that predicts effect of vitamin C on Tooth Growht in Guinea Pigs
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predicting the Effect of Vitamin C on Tooth Growth in Guinea Pigs"),
  
  # Radio buttons to choose supplement and numeric input for doseage 
  sidebarLayout(
    sidebarPanel(
        radioButtons("supp", "Supplement:",
                   c("Vitamin C" = "VC",
                     "Orange Juice" = "OJ")
    ),
        numericInput("dose","Doseage (mg)",value=0.5, min=0.5, max=2, step = 0.5)
    ),
    # Show a plot of the generated distribution
    mainPanel(
       h5("This application predicts the effects on Tooth Growh of Guinea Pigs by applying vitamin C through different supplements."),
       h5("Begin by specifying a type of supplement and a dose to get a prediction."),
       h3("Estimated Tooth Growth:"),
       textOutput("pred")
    )
  )
))
