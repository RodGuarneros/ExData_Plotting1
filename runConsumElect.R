
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "power_consumption.zip", method = "curl")
rm("./power_consumption.zip")
PC <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
PC$DateTime <- strptime(paste(PC$Date, PC$Time), "%d/%m/%Y %H:%M:%S")

#Solo 2 fechas 

PC2 <- subset(PC, PC$Date =="1/2/2007" | PC$Date == "2/2/2007")


