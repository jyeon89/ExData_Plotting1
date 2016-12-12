## Name png file and set plot size
png("plot1.png", width=480, height=480)

## Histogram of Global Active Power and its frequency
hist(data$Global_active_power, breaks = 11, col = 'red', 
     main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')

dev.off()
