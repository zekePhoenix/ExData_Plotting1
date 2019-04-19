## This is the third of four R scripts
##This script assumes that plot1.R and plot2.R scripts have already been run. Data download and date selection
## and date/time converstion has already occured.

#create png file "plot3.png" of Energy sub metering plot
png(file = "plot3.png", width = 480, height = 480)
with(data, plot(DateTime, Sub_metering_1, type ="l", xlab = "", ylab= "Energy sub metering"))
with(data, points(DateTime, type = "l", Sub_metering_2, col = "red"))
with(data, points(DateTime, type = "l", Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "blue", "red"),
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()
