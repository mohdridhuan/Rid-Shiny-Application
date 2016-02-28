library(shiny)


shinyUI(pageWithSidebar(
  
  headerPanel("Malaysia Measurement to USA Measurement Converter"),
  

  
  sidebarPanel(
    
    helpText("This apps is to convert measurements used in Malaysia to USA. Please input or select measurements you want to convert. The converted measurements will be shown at the right side of the apps."),

    sliderInput("temperature", "Temperature (Celcius):", 
                min=-40, max=300, value=30),
    

    numericInput("distance", "Distance (Kilometers):", 
                min = 0, max = 99999, value = 100, step= 0.1),
    

    sliderInput("height", "Height (Centimeter):",
                min = 0, max = 400, value = 170),
    

    sliderInput("weight", "Weigth (Kilograms):", 
                min = 0, max = 500, value = 70,)
  ),
  
  mainPanel(
    tableOutput("values")
  )
))