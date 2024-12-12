## Producing single graph with Exponential and Logistic growth curves ##

install.packages("ggplot2") # Install ggplot2
library(ggplot2) # Load package

# Load data
growth_data <- read.csv("experiment.csv")

# Define the logistic growth function
logistic_fun <- function(t) {
  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

# Define the exponential growth function
exponential_fun <- function(t) {
  N <- N0 * exp(r * t)
  return(N)
}

# Parameter values
N0 <- exp(6.883e+00)
r <- 1.004e-02
K <- 6.00e+10

# Create the plot
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(alpha = 0.5, size = 3, colour = "#CD6889") +  
  stat_function(fun = logistic_fun, aes(colour = "Logistic"), size = 1, alpha = 0.6) +
  stat_function(fun = exponential_fun, aes(colour = "Exponential"), size = 1, alpha = 0.8) +
  scale_y_continuous(trans = 'log10') +  
  scale_colour_manual(values = c("Logistic" = "#FFb5C5", "Exponential" = "#6CA6CD")) +  
  labs(title = "Exponential vs Logistic Growth",
       x = "Time (t)",
       y = "Population (N)",
       colour = "Growth Model") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5)) 
