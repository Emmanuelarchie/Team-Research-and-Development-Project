# Load your dataset or create example data
# Replace 'data' with your actual dataset
data <- c(12.3, 15.6, 14.7, 13.8, 16.2, 12.9, 15.1, 14.5, 13.6, 14.9)  # Example data

# Perform the Shapiro-Wilk Normality Test
shapiro_result <- shapiro.test(data)

# Display the test results
cat("Shapiro-Wilk Test Results:\n")
print(shapiro_result)

# Interpret the results
if (shapiro_result$p.value > 0.05) {
  cat("The data appears to follow a normal distribution (p-value =", 
      shapiro_result$p.value, ").\n")
} else {
  cat("The data does NOT appear to follow a normal distribution (p-value =", 
      shapiro_result$p.value, ").\n")
}
