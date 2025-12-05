#  A99

Team Research and Developement Project
This project investigates whether a significant correlation exists between the price of a house (in USD) and its area (in square feet) using a dataset of over 5,000 housing units.
Our team employed statistical analysis, data visualisation, and hypothesis testing to uncover meaningful insights into real estate pricing trends.
Tests Carried Out
1. Descriptive Statistics
2. Normality Tests
Shapiro–Wilk Test on:
price
area
Purpose: determine whether variables follow a normal distribution.
Result: both variables not normally distributed (non-parametric).

3. Distribution Analysis
Histogram of price
Histogram of area
Added normal distribution curves to compare real data vs ideal bell curve.

4. Correlation Analysis
Spearman’s Rank Correlation Test
Used because data is non-parametric.
Results:
Correlation ≈ 0.6
p-value < 0.05
Conclusion: significant positive correlation.

5. Visual Correlation Check
Scatter Plot of area vs price
Included linear trend line (geom_smooth(method = "lm"))
Used to visually confirm the statistical correlatio

## Deliverable Task
- Group Form group.
- Project plan Create project plan.
- Trello board Create Trello board.
- Git repository Create Git repository.
- Research question Formulate research question.
- Null & alt. hypotheses Write null and alt. hypotheses.
- Ind. & dep. variables Identify ind. and dep. variables.
- Dataset CSV file Download dataset as CSV.
- Dataset column headings Identify dataset column headings.
- Visualization Create visualization.
- Final report Write final report.

## Contributing
 ### Set up your user and email globally/local before pushing to the repo.
 
 ```
     git config --global user.name "Your Name"
     git config --global user.email "your-email@example.com"
     git config user.name "Your Different Name"
     git config user.email "your-different-email@example.com"
```


## Installation

Provide step-by-step instructions on how to set up the project.

```bash
# Example command
git clone https://YOURTOKEN@github.com/7COM1079-A99/A99 
cd yourproject
