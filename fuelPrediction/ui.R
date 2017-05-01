
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
data(mtcars)

shinyUI(fluidPage(
        
        # Sidebar with a slider input for number of bins
        sidebarLayout(
                sidebarPanel(
                        radioButtons(inputId = "regressors", 
                                     label = "Please Select a Regressor",
                                     selected = "wt",
                                     choices = names(mtcars)[2:11],
                                     inline = FALSE,
                                     width = "100%")
                ),
                
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("plot")
                ))
)
)
