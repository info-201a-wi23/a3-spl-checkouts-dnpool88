library(dplyr)
library(ggplot2)

checkout_df <- df %>% group_by(CheckoutYear) %>% summarize(TotalCheckouts = sum(Checkouts)) %>% top_n(10)

checkouts <- ggplot(checkout_df, aes(x = CheckoutYear, y = TotalCheckouts, fill = TotalCheckouts)) + geom_bar(stat = "identity")  + labs(title = "Total Number of Checkouts over the Years", x = "Year", y = "# of Checkouts", fill = "Checkouts")
checkouts
