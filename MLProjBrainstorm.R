# Data
company <-
  c(
    "Apple",
    "Microsoft",
    "Amazon",
    "Tesla",
    "Alphabet (Google)",
    "Johnson & Johnson",
    "Berkshire Hathaway",
    "UnitedHealth Group",
    "Meta Platforms (Facebook)",
    "NVIDIA"
  )
market_cap <-
  c(2.75,
    2.56,
    2.49,
    1.03,
    1.86,
    457.11,
    669.33,
    503.08,
    358.74,
    559.74)
returns <-
  c(0.10, 0.15, 0.05, 0.20, 0.08, 0.06, 0.07, 0.12, 0.11, 0.18)

# Calculate standard deviation (risk)
risk <- c(0.2, 0.18, 0.22, 0.35, 0.15, 0.1, 0.2, 0.12, 0.16, 0.28)

# Create a data frame
data_df <- data.frame(company, market_cap, returns, risk)

# Plot
library(ggplot2)

ggplot(data = data_df, aes(x = risk, y = returns)) +
  geom_point(size = 4, color = "blue") +
  labs(title = "Reward vs. Risk of the 10 Largest Stocks in the S&P 500", x = "Risk (Standard Deviation)", y = "Reward (Returns)") +
  theme_bw() +
  geom_text(aes(label = company), hjust = -0.2, vjust = -0.2, size = 3)
