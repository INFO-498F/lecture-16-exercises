# Create UI
shinyUI(fluidPage(
  # UI for the traffic simulation
  titlePanel('Traffic Simulation'),
  
  # Controls
  sidebarLayout(
    sidebarPanel(  
      sliderInput("num_cars", "Number of Cars:", 
                  min = 10, max = 1000, value = 100, step = 10),
      sliderInput("num_sims", "Iterations of Simulation", 
                  min = 10, max = 1000, value = 100, step= 10),
      sliderInput("speed", "Average Speed", 
                  min = 10, max = 150, value = 40, step= 5),
      sliderInput("deviation", "Speed Deviation", 
                  min = 1, max = 20, value = 5, step= 1)
    ),
    # Render plot
    mainPanel(
      plotOutput("histogram")
    )
  )
))
