# Construct a plot
plot(data$Time, data$Global_active_power, 
     type = 'l', 
     ylab = 'Global Active Power (kilowatts)',
     xlab = '')


## Name png file and set plot size
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()