#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define UI for application that shows a list of data in "mtcars"
fluidPage(
  
  # Application title
  titlePanel("Mtcars Datatable"),
  
  #documentation
  fluidRow(
      column(8, offset =2,
             p("Select numbers of Cylinders to display for the Mtcars dataset", style = "font-family:'Sources Sans Pro';"))
  ),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
      column(4,
             selectInput("cyl",
                         "Cylinder",
                         c("All",
                           unique(as.character(mtcars$cyl))))
  )
 ),
 # Create a new row for the table.
 fluidRow(
     DT::dataTableOutput("table")
 )
)
