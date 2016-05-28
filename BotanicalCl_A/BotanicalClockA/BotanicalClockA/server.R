library(shiny)
library(markdown)
library(ggplot2)
library(scales)

Flowers <- read.csv("Flowers.csv")

shinyServer(function(input, output) {
   
    # You can access the value of the widget with input$select, e.g.
    output$value <- renderPrint({ input$select })
    
    output$plot <- renderPlot({ 
        print(ggplot(data=Flowers, aes(x=CLOSING,y=OPENING,fill=FLOWER)) +
                geom_bar(position="dodge",stat="identity") +
                ggtitle("Botanical Clock"))
      })
    
    })