powerData <- read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings = c("?",NA))
powerData$Date <- as.Date(as.character(powerData$Date), format="%d/%m/%Y")
subPowerData <- subset(powerData, Date>=as.Date("2007-02-1", format="%Y-%m-%d") & Date<=as.Date("2007-02-02", format="%Y-%m-%d"))
hist(subPowerData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()