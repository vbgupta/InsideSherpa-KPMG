#install packages
install.packages("ggplot2")
install.packages("dplyr")

#call on packages using library
library(ggplot2)
library(dplyr)

#uplaoded Trasaction dataset as csv
data <- read.csv("TRANSACTION_KPMG.csv", header = TRUE)

data

#shows that Solex has the most occurances in the dataset
chart1 <- qplot(data$brand, geom = "bar",
               xlab = "Cycle Brand", ylab = "Occurances",
               main = "Number of times the Brands show up") + aes(fill = ..count..)
chart1

#brand and profit
chart2 <- ggplot(data, aes(x = brand, y = Profit, fill = brand)
                , xlab = "Cycle Brand" , 
                 ylab = "Profit per Brand" ) + geom_bar(stat = "identity") + theme(axis.text.x = element_text(angle =90))
                
                
print(chart2 + ggtitle("Brands that bring in the most profit"))

#uploaded modified customer address dataset as csv
data1 <- read.csv("CUSADD_KPMG.csv", header = TRUE)
data1

#Coustomers are mostly from which State in Australia
chart3 <- qplot(data1$state, geom = "bar", xlab = "States in Australia", ylab = "Ocurrances", 
                main = "Number of times each State shows up") + aes(fill = ..count..)
chart3

#uploaded data for new cusotmer list provided in module 3
data2 <- read.csv("newcus_kpmg.csv", header = TRUE)
data2

# most common cusotmer job industry
chart4 <- qplot(data2$job_industry_category, geom = "bar", xlab = "Job Industry Category",
               ylab = "Occurances", 
               main = "Most common cusotmer job industry") + aes(fill = ..count..) + theme(axis.text.x = element_text(angle = 90))
chart4

#customer wealth
chart5 <- qplot(data2$wealth_segment, geom = "bar", xlab = "Customer Wealth Segment",
               ylab = "Count", main = "Customer Wealth Segment") + aes(fill = ..count..)
chart5

#Gender breakdown of Customers
chart6 <- qplot(data2$gender, geom = "bar", xlab = "Gender", ylab = "Count",
               main = "Gender Breakdown of Cusotmers") + aes(fill = ..count..)
chart6


