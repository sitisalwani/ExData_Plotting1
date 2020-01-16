
# Create Multiple Plot

par(mfrow = c(2, 2)) 

# First plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

# Second plot
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

# Third plot
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
#legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
legend("topright", col=c("black", "red", "blue"), lwd=2.5, 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.1, lty = 1)


# Fourth plot
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2)

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()