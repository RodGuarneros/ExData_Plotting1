#Para publicar cuatro graficos al mismo tiempo

par(mfrow= c(2,2), mar = c(5,5,4,4))

dev.copy(png, file = "/Users/rodrigoguarneros/coursera/AssignmentCoueseProj1Graphics/plot4.png")
with(PC2, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
title(main = "Plot 1.- Time Serie of Global Active Power")
with(PC2, plot(DateTime, Voltage, type = "l", ylab = "Voltage"))
title(main = "Plot 2.- Voltage")
plot(PC2$DateTime, PC2$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(PC2$DateTime, PC2$Sub_metering_2, type = "l", col = "red")
points(PC2$DateTime, PC2$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
title(main = "Plot 3.- Sub metering")
with(PC2, plot(DateTime, Global_reactive_power, type = "l", ylab = "Global Reactive Power"))
title(main = "Plot 4.- Global Reactive Power")
dev.off()

