setwd("C:/Users/Jae/Desktop/JHU - Data Science/4 _ Exploratory Data Analysis/Week1")

library(data.table)

## Pull up the data from UCI household power consumption dataset
folder <- file.path('./household power consumption')
data <- read.table(file.path(folder, 'household_power_consumption.txt'), 
                   sep=";", 
                   header = TRUE,
                   stringsAsFactors = FALSE)

# Change the class types from characters to numeric for some columns
for (i in 3:9)
      data[,i] <- as.numeric(data[,i])

## Reconstruct the data on the selected dates
data$Date <- as.Date(data$Date, '%d/%m/%Y')
data$Time <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

      
dates <- as.Date(c('02/01/2007', '02/02/2007'), '%m/%d/%Y')


data <- subset(data, Date %in% dates)
