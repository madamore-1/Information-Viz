w <- file.choose()
Wages <- data.frame(read.csv(w))



# Boxplot of Weekly Wages
boxplot(Wages$Weekly.Wages,
        main = "Boxplot of Weekly Wages (2024-2025 Season)",
        ylab = "Wages (in USD)",
        col = "lightblue")

# Histogram of Weekly Wages
hist(Wages$Weekly.Wages,
     breaks = 20,
     main = "Histogram of Weekly Wages (2024-2025 Season)",
     xlab = "Weekly Wages (in USD)",
     col = "lightgreen")
# Calculate the max and min wages
max_wage <- max(Wages$Annual.Wages, na.rm = TRUE)
min_wage <- min(Wages$Annual.Wages, na.rm = TRUE)

# Barplot to show max and min wages
barplot(c(min_wage, max_wage),
        names.arg = c("Minimum Wage", "Maximum Wage"),
        main = "Max and Min Annual Wages (2024-2025 Season)",
        ylab = "Annual Wages (in USD)",
        col = c("blue", "red"))


# Calculate average wage
avg_wage <- mean(Wages$Annual.Wages, na.rm = TRUE)

# Plot the average wage
barplot(avg_wage,
        main = "Average Annual Wage (2024-2025 Season)",
        ylab = "Average Wage (in USD)",
        col = "green")

install.packages('dplyr')
library(dplyr)

df_grouped <- df %>%
  group_by(Nation) %>%
  summarise(
    avg_weekly_wage = mean(Weekly.Wages, na.rm = TRUE),
    avg_annual_wage = mean(Annual.Wages, na.rm = TRUE),
    max_annual_wage = max(Annual.Wages, na.rm = TRUE),
    min_annual_wage = min(Annual.Wages, na.rm = TRUE)
  )

