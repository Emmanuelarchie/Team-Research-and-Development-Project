# Load necessary package
# If needed, install 'ggplot2' and 'corrplot' for visualizing the correlation matrix
# install.packages("corrplot")

# Load libraries
library(corrplot)

# using housing data 
ead.csv("Housing.csv")

# Calculate the correlation matrix
cor_matrix <- cor(data)

# Print the correlation matrix
print(cor_matrix)

# Visualize the correlation matrix using a heatmap
corrplot(cor_matrix, method = "circle")  # You can choose other methods like 'number', 'color', etc.