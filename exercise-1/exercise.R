### Exercise 1: Data Frame Practice

## This exercise need the "fueleconomy" package.  Install and load it.
## You should have have access to the `vehicles` data.frame
library(fueleconomy)
head(vehicles)
View(vehicles)
# Create a data.frame of vehicles from 1997 only
vehicles1997 <- (vehicles[vehicles$year == 1997, TRUE])
View(vehicles1997)
# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(vehicles1997$year)
# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
TwoWheelDrive <- (vehicles[vehicles$drive == "2-Wheel Drive", TRUE])
MoreThan20City <- (TwoWheelDrive[TwoWheelDrive$cty > 20, TRUE])
View(MoreThan20City)
# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
WorstHwyMpg <- MoreThan20City$id[MoreThan20City$hwy == min(MoreThan20City$hwy)]
View(WorstHwyMpg)
# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
MostHwy <- function(year, make){
  
}
# What was the most efficient honda model of 1995?


