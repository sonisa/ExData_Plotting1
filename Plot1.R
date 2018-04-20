## Construct the plot and save it to a PNG file with a width of 480 pixels and a height
# of 480 pixels.
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
subSetData <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")
#subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
