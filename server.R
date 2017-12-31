#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Load the required Library
library(ggplot2)
df <- data.frame(diamonds)
df <- df[,c(1:7)]

# Built Linear model based on the Carat
lm<- lm(price ~ carat, df)

lmp <- function(carat){
  p <- data.frame(carat=carat)
  pred <- as.numeric(predict(lm,p))
  return(pred)
}

shinyServer(
  function(input,output){
    output$value <- renderPrint({lmp(input$carat)})
  }
)
