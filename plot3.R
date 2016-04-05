# Tercera grafica (por grupo de submetering)

dev.copy(png, file = "plot3.png")
plot(PC2$DateTime, PC2$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(PC2$DateTime, PC2$Sub_metering_2, type = "l", col = "red")
points(PC2$DateTime, PC2$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
title(main = "Plot 3.- Sub metering")
dev.off()
