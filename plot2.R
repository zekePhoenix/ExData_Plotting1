#This script assumes that plot1.R script has already been run. Data down load and date selection has already occured.

#create new Data/Time column
data$DateTime <- as.POSIXct(strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S"))

#Creat png file "plot2.png" of plot
png(file = "plot2.png", width = 480, height = 480, units = "px")
with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab= "Global Active Power (kilowatts)"))
dev.off()