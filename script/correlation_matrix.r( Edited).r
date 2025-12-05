# Load necessary package
# If needed, install 'ggplot2' and 'corrplot' for visualizing the correlation matrix
# install.packages("corrplot")

# Load libraries
library(corrplot)

# using housing data 
read.csv("C:/Users/emman/OneDrive/Desktop/team research 3/A99/Doc/dataset/Housing.csv")
housingdata <- read.csv("C:/Users/emman/OneDrive/Desktop/team research 3/A99/Doc/dataset/Housing.csv")

# Calculate the correlation matrix
cor_matrix <- cor(housingdata$price,housingdata$area)

# Print the correlation matrix
print(cor_matrix)


# Visualize the correlation matrix using a heatmap
str(cor_matrix)
cor_matrix <- as.matrix(cor_matrix)
corrplot(cor_matrix, method = "circle")  # You can choose other methods like 'number', 'color', etc.