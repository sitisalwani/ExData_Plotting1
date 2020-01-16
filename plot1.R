## Create the histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


## Save file and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()