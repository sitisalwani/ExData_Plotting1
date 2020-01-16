#Assignment 1 :Exploratory Data Analysis
#Instruction  :Our overall goal here is simply to examine how household energy usage varies over 
#              a 2-day period in February, 2007. Your task is to reconstruct the following plots 
#              below, all of which were constructed using the base plotting system


# Loading the data
main_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
summary(main_data)

#Subset the data from the dates 2007-02-01 and 2007-02-02

subsetdata <- main_data[main_data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subsetdata$Global_active_power)
globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)


