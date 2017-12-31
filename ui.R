#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#



# Define UI for application
library(shiny)
shinyUI(fluidPage(
  headerPanel("Calculate The Diamond Value Before You Buy Or Sell"),
  
  # Option to choose the wight of the Diamond
  sidebarPanel(
    sliderInput('carat', 'Diamond Carat', min = 0, max =5.01, 2.5, step = 0.01),
    submitButton("Submit")
    ),
  # Name the Main Panel
  mainPanel(
    h4("Price based on the carat (weight) U$:"),
    verbatimTextOutput("value"),
    tabsetPanel(tabPanel("Supporting Documentation", p("This application will predict the value of the diamond, 
                                                           based on a linear model using the Carat
                                                           (an unit of weight for diamonds). 
                                                           You just need to use the slider on the top left of this app and presse the Submit button.")),
                         tabPanel("Github", p("Available at: https://github.com/sagazluiz/dataproducts.")
                         ))
    
    
  )
))


