#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Filter data based on selctions
function(input, output) {
   
  output$table <- DT::renderDataTable(DT::datatable({
      data <- mtcars
      if (input$cyl != "All") {
          data <- data[data$cyl == input$cyl,]
      }
    data
  }))
}
