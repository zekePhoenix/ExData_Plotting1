## This is the fourth of four R scripts
##This script assumes that plot1.R, plot2.R, and plot3.R scripts have already been run. Data download and date selection
## and date/time converstion has already occured.

#create 4 graphs as png file "plot4.png"
png(file = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2)) #parameters for a 2 row, 2 column plot

#Graph 1
with(data, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

#Graph 2
with(data, plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage"))

#Graph 3
with(data, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(data, points(DateTime, type = "l", Sub_metering_2, col = "red"))
with(data, points(DateTime, type = "l", Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "blue", "red"),
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)

#Graph 4
with(data, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power"))

dev.off()