## Construct multiple plots on one pane
par(mfcol=c(2,2))

## Plot (1,1)
plot(data$Time, data$Global_active_power, 
     type = 'l', 
     ylab = 'Global Active Power',
     xlab = '')

# Plot (2,1)
plot(data$Time, data$Sub_metering_1,
     type = 'l',
     col = 'black',
     ylab = 'Energy sub metering',
     xlab = '')

lines(data$Time, data$Sub_metering_2,
      col = 'red')

lines(data$Time, data$Sub_metering_3,
      col = 'blue')

legend("topright", 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c('black', 'red', 'blue'),
       lty = c(1,1,1),
       lwd = 1,
       text.width = 130000,
       y.intersp = 0.12,
       seg.len = 1,
       inset = -0.25,
       bty = 'n',
       cex = 0.9)

## Plot (1,2)
plot(data$Time, data$Voltage,
     type = 'l',
     ylab = 'Votage',
     xlab = 'datetime')


## Plot (2,2)
plot(data$Time, data$Global_reactive_power,
     type = 'l',
     ylab = 'Global Reactive Power',
     xlab = 'datetime')


## Name png file and set plot size
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()