tableData <- read.table("household_power_consumption.txt", head=TRUE, sep=";", stringsAsFactors=FALSE)
tableData$Date <- as.Date(tableData$Date, format="d%/m%/Y%")
powerData <-  subset(tableData, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(as.numeric(powerData$Global_active_power)/1000,col="orangered",
     main="Global Active Power", 
     xlab ="Global Active Power (kilowatts)")
dev.off()