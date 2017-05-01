
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
        
        output$plot <- renderPlot({
                
                ggplot(data=mtcars, aes_string(x=input$regressors, y="mpg"))+
                        geom_point()+
                        geom_smooth(method="lm", fill="lightgreen", colour="blue")+
                        theme_bw()+
                        labs(title=paste("MPG x", toupper(input$regressors)),
                             y="Miles per Gallon (MPG)")
        })
        
        
        })

