## Construct a plot
plot(data$Time, data$Sub_metering_1,
     type = 'l',
     col = 'black',
     ylab = 'Energy sub metering',
     xlab = '')

lines(data$Time, data$Sub_metering_2,
      col = 'red')

lines(data$Time, data$Sub_metering_3,
      col = 'blue')

legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c('black', 'red', 'blue'),
       lty = c(1,1,1),
       lwd = 1,
       #adj = 0.5,
       text.width = 45000,
       y.intersp = 0.7)


## Name png file and set plot size
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()