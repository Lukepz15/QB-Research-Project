# Load libraries
library(tidyverse)
library(caTools)
library(car)
library(broom)

# Read the dataset
QB_Data <- read_csv("QB_Data.csv")

# --------- SIMPLE LINEAR REGRESSION ---------
model <- lm(WPct ~ TD_INT_R, data = QB_Data)
summary(model)

# Scatterplot of win percentage vs TD/INT ratio
plot(QB_Data$TD_INT_R, QB_Data$WPct, 
     main = "Scatterplot of Win Percentage vs. TD/INT Ratio", 
     xlab = "TD/INT Ratio", 
     ylab = "Win Percentage", 
     pch = 16, col = "blue")
abline(model, col = "red", lwd = 2)

# Histogram of win percentage 
hist(QB_Data$WPct, 
     main = "Histogram of Win Percentage", 
     xlab = "Win Percentage", 
     col = "blue", 
     border = "black", 
     breaks = 10)

# --------- OPTIONAL: DIAGNOSTICS AND EXTRAS ---------

# --------- MULTIPLE LINEAR REGRESSION ---------
model2 <- lm(WPct ~ TD_INT_R + Yds + CPct, data = QB_Data)
summary(model2)

# VIF - Multicollinearity Check
vif(model2)

# Compare models (simple vs. multiple regression)
anova(model, model2)

# Correlation Matrix
QB_Data %>%
  select(TD_INT_R, WPct, Yds, CPct) %>%
  cor(use = "complete.obs") %>%
  round(2)

# Residual diagnostics (optional but useful)
par(mfrow = c(2, 2))
plot(model)
par(mfrow = c(1, 1))


