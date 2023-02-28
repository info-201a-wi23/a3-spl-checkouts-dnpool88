library(dplyr)
library(ggplot2)

m_df <- df %>% group_by(MaterialType, CheckoutMonth, CheckoutYear, Title) %>% summarize(Checkouts = sum(Checkouts))
material_df <- m_df %>% filter(Title == "Educated : a memoir / Tara Westover.", Checkouts > 50)

material_plot <- ggplot(material_df, aes(x = Checkouts, fill = Title)) + geom_histogram(bins = 8)  + labs(title = "Count of the Number of Checkouts for Tara Westover", x = "Checkouts", y = "Count by Month", fill = "Book:")
material_plot
