# Run the traffic simulation
source('traffic_sim.R')
shinyServer(function(input, output) {
  output$histogram <- renderPlot({
    repeat_simulation(
      num_sims = input$num_sims, 
      mean = input$speed, 
      sd = input$deviation, 
      num_cars = input$num_cars
    )
  })
})