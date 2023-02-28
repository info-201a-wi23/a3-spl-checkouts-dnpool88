library(dplyr)
library(ggplot2)

df <- read.csv("Desktop/INFO_201/a3-spl-checkouts-dnpool88/2013-2023-5-Checkouts-SPL.csv", stringsAsFactors = FALSE)

month_df <- df %>% group_by(CheckoutMonth, UsageClass) %>% summarize(MaxCheckoutDay = max(Checkouts)) %>% arrange(MaxCheckoutDay)

month_plot <- ggplot(month_df, aes(x = CheckoutMonth, y = MaxCheckoutDay, group = UsageClass)) + geom_line(aes(color= UsageClass))+ geom_point(aes(color = UsageClass))  + labs(title = "Highest # of Checkouts in a Month and Type", x = "Month", y = "Checkouts", fill = "Type")
month_plot
