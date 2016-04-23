library(shiny) 

shinyUI(fluidPage( 
   titlePanel("Body Mass Index (BMI) Calculator"), 
   sidebarLayout(sidebarPanel( 
     p('Body Mass Index (BMI) is a calculation that attempts to tell if you are underweight or overweight 
     for your height.'), 
     p('In the boxes on the left below, please enter your height and your weight. On the right, 
     you will see your calculated BMI measurement along with BMI chart.'), 
      
     radioButtons( 
       inputId  = "units", 
       label    = "Units:", 
       choices  = c("Metric (kg & m)" = 1, "Imperial (lb & in)" = 2), 
       selected = 1 
     ), 
      
     numericInput( 
       inputId = "mass", 
       label = strong("Enter your weight:"), 
       value = 70 
     ), 
      
     numericInput( 
       inputId = "height", 
       label = strong("Enter your height:"), 
       value = 1.80, 
       step  = 0.10 
     ) 
     ), 
      
     mainPanel( 
       uiOutput("input"), 
       uiOutput("result"), 
       uiOutput("graph") 
     )) 
 ))