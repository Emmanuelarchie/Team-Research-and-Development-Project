library(tidyverse)

#Load the dataset
Housing <- read.csv("Housing.csv")  # 13 col, 545 rows
length(Housing$price) # number of row
names(Housing) # col

head(Housing) # 6 rows

summary(Housing)  # mean, median, SD

housing2 <- Housing

unique(Housing$furnishingstatus) #check vals
#D datatype
housing2$furnishingstatus <- as.factor(housing2$furnishingstatus) 
class(housing2$furnishingstatus)

levels(housing2$furnishingstatus)

# group houses






glimpse(housing2)



#created a new price column to show the price of houses in million dollars
housing2$new_price <- housing2$price/1e6

# histogram to check normalcy of data
h <-hist(housing2$new_price, breaks = 20,
         col = "green",
         xlab = "Price of housing unit (in million dollars)",
         ylab = "Frequency (count)",
         main = "Histogram of Price Values",
         ylim = c(0, 100),
         xlim = c(0, 14))

# Add a normal distribution line
x <- seq(min(housing2$new_price), 
         max(housing2$new_price), length = 100)
y <- dnorm(x, mean = mean(housing2$new_price), 
           sd = sd(housing2$new_price)) * length(housing2$new_price)
box.size <- diff(h$mids[1:2])
y <- y * box.size
lines(x, y, col = "red", size = 3)


# Scatter plot - for correlation
cor.test(housing2$new_price, housing2$area, method="spearman")  
plot(
  housing2$area, 
  housing2$price, 
  xlab = "Price (million dollars)", 
  ylab = "Area (in square feet)", 
  main = "Scatter plot showing the correlation between prices and areas",
  cex.lab = 1.2
)


# Add a trend line
abline(lm(price ~ area, data = housing2), col = "red") 






# Group Form group.  /
# Project plan Create project plan. ...
# Trello board Create Trello board.
# Git repo Create Git repository.  /
# Research question Formulate research question. ...
# Null & alt. hypotheses Write null and alt. hypotheses.  ?
# Ind. & dep. variables Identify ind. and dep. variables.  /.
# Dataset CSV file Download dataset as CSV.    /
# Dataset column headings Identify dataset column headings.  /
# Visualization Create visualization].   .....
# Final report Write final report        !!



# ___________________
#histogram to show normalcy of data  
# h <-hist(mtcars$mpg, breaks = 20, xlab = "Miles per Gallon", ylab = "Frequency", main = "Histogram of MPG Values")
# # Add a normal distribution line
# x <- seq(min(mtcars$mpg), max(mtcars$mpg), length = 100)
# y <- dnorm(x, mean = mean(mtcars$mpg), sd = sd(mtcars$mpg)) * length(mtcars$mpg)
# box.size <- diff(h$mids[1:2])
# y <- y * box.size
# lines(x, y, col = "red")

