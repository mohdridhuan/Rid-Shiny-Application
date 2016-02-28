library(shiny)

shinyServer(function(input, output) {
  
  sliderValues <- reactive({
    
    data.frame(
      Name = c("Temperature (Fahrenheit)", 
               "Distance (Miles)",
               "Height (Feets)",
               "Weight (Pounds)"),
      
      Value = as.character(c(input$temperature*1.8+32, 
                             input$distance*0.621371,
                             input$height*0.0328084,
                             input$weight*2.20462)), 
      stringsAsFactors=FALSE)
  }) 
  
  output$values <- renderTable({
    sliderValues()
  })
})
