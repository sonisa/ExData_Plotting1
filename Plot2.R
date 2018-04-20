## Construct the plot and save it to a PNG file with a width of 480 pixels and a height
# of 480 pixels.
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
subSetData <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime,Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
