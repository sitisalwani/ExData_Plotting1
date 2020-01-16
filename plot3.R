## Create a Plot for Sub-Metering

plot(datetime, subMetering1, type="l", ylab="Energy Sub Metering", xlab="")
lines(datetime, subMetering2, col="red")
lines(datetime, subMetering3,  col="blue")
#legend("topright", col=c("black", "red", "blue"), lwd= c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

legend("topright", col=c("black", "red", "blue"), lwd=2.5, 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.3, lty = 1)

## Saving to file 
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()