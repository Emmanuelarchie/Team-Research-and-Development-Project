#Load required libraries
install.packages("readr")
install.packages("ggplot2")
install.packages("geomtextpath")

library(readr)
library(ggplot2)
library(geomtextpath)


#Load the dataset into the system :
data <- read.csv("src/Housing.csv")

#display the first 5 rows of the dataset
head(data)

#show the descriptive statistics of the dataset
summary(data)

#created a new price column to show the price of houses in million dollars
data$new_price <- data$price/1e6

#display the first six row of the data : including the converted new price column
head(data)

# histogram of the distribution of the house price column
h1 <- hist(data$new_price, 
           breaks = 20,
           freq = TRUE, 
           col = 'green',
           xlim=c(0,14), 
           xlab = "Price of housing unit (in million dollars)",
           ylab = "Frequency (count)",
           main = "Histogram of price Values"
          )

# add a normal distribution line for price
x <- seq(min(data$new_price),
         max(data$new_price), 
         length = 100
         )

y <- dnorm(x, 
           mean = mean(data$new_price), 
           sd = sd(data$new_price)
           ) * length(data$new_price)

box.size <- diff(h1$mids[1:2])
y <- y * box.size
lines(x, y, col = "red")


h2 <-hist(data$area, 
          breaks = 20,
          col="steelblue",
          xlim=c(0,20000), 
          xlab = "Dimension area of housing unit (in square feet)",
          ylab = "Frequency (count)", 
          main =  "Histogram of area Values"
         )

#add a normal distribution line for area
x2 <- seq(min(data$area), max(data$area), length = 100)
y2 <- dnorm(x2, mean = mean (data$area), sd = sd(data$area)) * length(data$area)
box.size <- diff(h2$mids[1:2])
y2 <- y2 * box.size
lines(x2, y2, col = "red")


# additional test to determine if follow a normal distribution. 
is_price_normal <- shapiro.test(data$price)
is_area_normal <- shapiro.test(data$area)

is_price_normal
is_area_normal


#spearman correlation test: to assess the strength of the relationship between two variables 
correlation_test <- cor.test(data$area, data$price, method = "spearman")
cat("\nCORRELATION ANALYSIS:\n")
cat("Spearman correlation coefficient:", correlation_test$estimate, "\n")
cat("P-value:", correlation_test$p.value, "\n")


#scatter plot : visualization of the correlation between the two variable.
scatter_plot <- ggplot(data, aes(x = area, y = new_price)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE, color="red") +
  labs(title ="Scatter plot showing the correlation between prices and their areas",y="Price (million dollars)", x="Area (in square feet)") + 
  theme(plot.title = element_text(hjust=0.5)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))

scatter_plot
