library(shiny)
library(markdown)
library(ggplot2)
library(scales)

Flowers <- read.csv("Flowers.csv")

shinyUI(navbarPage("BOTANICAL CLOCK",
                   tabPanel("Description",
                            sidebarLayout(
                                 sidebarPanel(
                                 selectInput("select", label = h3("Botanical Names of Flowers"),                                                                         choices = list("Yellow Goats Beard" = "Tragopogon pratensis", "Rough Hawkbit" = "Leontodon hispidus", "Narrow Leaf Hawksbeard" = "Crepis tectorum", "Sow Thistle" = "Sonchus oleraceus", "Dandelion" = "Taraxacum officinale Weber", "Hawksbeard" = "Crepis alpina", "False Sow Thistle" = "Reichardia tingitana", "Spotted Cats Ear" = "Hypochaeris maculata", "Canadian Hawkweed" = "Hieracium umbellatum", "Marsh Sow Thistle" = "Sonchus palustris", "Blue Sow Thistle" = "Cicerbita alpina", "Garden Lettuce" = "Lactuca sativa", "White Waterlily" = "Nymphaea alba", "Scarlet Pimpernel" = "Anagallis arvensis", "Ice Plant" = "Mesembryanthemum crystallinum", "Quill FameFlower" = "Phemerantus teretifolius", "Sundrops" = "Oenothera fruticosa")),
                                     hr(),
                                     fluidRow(column(10, verbatimTextOutput("value"))
                                 )
                                 ),
                                 mainPanel(
                                        includeMarkdown("Description.md"))
                                 )),
                                    tabPanel("Plot Botanical Clock",
                                             mainPanel(
                                             plotOutput("plot"))
                                    ),
                                        tabPanel("More",
                                        mainPanel(
                                        fluidRow(
                                           column(10,
                                                  includeMarkdown("More.md"))
                                           ),
                                           column(4,
                                                  img(class="img-polaroid",
                                                      src=paste0("http://upload.wikimedia.org/",
                                                                 "wikipedia/commons/f/fa/",
                                                                 "Eilenburg_Blumenuhr2.jpg")),
                                                  tags$small(
                                                      "Users own work, Photographed by Joebo7 3rd May 2009",
                                                      a(href="http://commons.wikimedia.org/wiki/File%3AEilenburg_Blumenuhr2.jpg")))))
                                    )
)
