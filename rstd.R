#library(readr)
#hw1_data <- read_csv("hw1_data.csv")
#View(hw1_data)

#Quiz 1

#Extract the subset of rows of the data frame where Ozone valuesare above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
data <- read_csv("hw1_data.csv")
inbetwee <- data[data$Ozone > 31, , drop = F]
inbetwee1 <- inbetwee[inbetwee$Temp > 90, , drop = F]
inbetwee2 <- na.omit(inbetwee1)
mean(inbetwee2$Solar.R)

#What is the mean of "Temp" when "Month" is equal to 6?
data <- read_csv("hw1_data.csv")
data1 <- data[data$Month == 6, , drop = F]
mean(data1$Temp)

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
data <- read_csv("hw1_data.csv")
data1 <- data[data$Month == 5, , drop = F]
data2 <- na.omit(data1)
max(data2$Ozone)