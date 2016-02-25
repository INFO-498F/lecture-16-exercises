simulate_groups <- function(mean, sd, num_cars) {
  # Simulate 100 cars w/mean speed 50
  cars <- rnorm(n = num_cars, mean = mean, sd = sd)
  
  # A function to determine if a car is slower than all of the cars
  # in front of it (which createa a new group of cars **behind** it)
  slower_than <- function(index) {
    return(cars[index] < min(cars[1:index - 1]))
  }
  
  # Apply the slower_than function to all of the cars
  new_group <- lapply(2:length(cars), slower_than)
  
  # Determine number of groups created
  groups <- length(new_group[new_group == TRUE]) + 1
  return(groups)
}

repeat_simulation <- function(num_sims = 10, mean = 50, sd = 5, num_cars = 100) {
  # Create an empty vector to store your results
  results <- vector()
  
  # Run your simulation 100 times, and track your results
  for(i in 1:num_sims) {  
    results <- c(results, simulate_groups(mean, sd, num_cars))
  }
  # Work with your results
  return(hist(results))
}

