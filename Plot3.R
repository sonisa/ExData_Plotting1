## Construct the plot and save it to a PNG file with a width of 480 pixels and a height
# of 480 pixels.
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
subSetData <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime,subMetering1, type="l",ylab="Energy Submetering",xlab ="")
with(subSetData,lines(datetime,as.numeric(as.character(Sub_metering_1))))
with(subSetData,lines(datetime,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subSetData,lines(datetime,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
