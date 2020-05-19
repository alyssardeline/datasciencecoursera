## Week 1 Quiz for R Programming Course

library(readr)
hw1_data <- read_csv("C:/Users/Wife of Blueshoes/Desktop/Learning R/R Programming Course/quiz1_data/hw1_data.csv")
View(hw1_data)
#now I have the data imported and usable
names(hw1_data) #gives column names

bottom <- hw1_data[152:153,]
bottom
#extracted last two rows

tail(hw1_data) #easier way to see last rows

nrow(hw1_data) #easier way to see number of rows

hw1_data[47,1]
#showed value of ozone for 47th row

sum(is.na(hw1_data$Ozone))
#show how many values in Ozone column are na

#exclude missing values and do mean of Ozone column
badOzone <- is.na(hw1_data$Ozone)
goodOzone <- hw1_data$Ozone[!badOzone]
mean(goodOzone)

#Extract subset where Ozone>31 and Temp>90.
#What is mean of Solar. R in subset?
SubsetAll <- subset(hw1_data, Temp>90 & Ozone>31)
SubSetSolar <- subset(SubsetAll, select=Solar.R)
apply(SubSetSolar, 2, mean)

#What is mean of temp when month=6?
Subset6MOnth <- subset(hw1_data,Month==6)
mean(Subset6MOnth$Temp)

#Find maximum ozone value in Month of May
SubsetMay <- subset(hw1_data,Month==5)
MayNa <- is.na(SubsetMay$Ozone)
MayOzone <- SubsetMay$Ozone[!MayNa]
max(MayOzone)
