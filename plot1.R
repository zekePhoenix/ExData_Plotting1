
#download and unzip file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "data.zip")
unzip("data.zip")

#read data
data_all <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")

#date cleanup
data_all$Date <- as.Date(data_all$Date, format = "%d/%m/%Y")
data <- data_all[data_all$Date >= as.Date("2007-02-01") & data_all$Date <= as.Date("2007-02-02"),]

#histogram plot to png file plot1.png
png(file = "plot1.png", width = 480, height = 480, units = "px")
with(data, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowats)"))
dev.off() 