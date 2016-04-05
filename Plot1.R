# Copiando la grafica con dimensiones establecidas
library(datasets)
dev.copy(png, file = "/Users/rodrigoguarneros/coursera/AssignmentCoueseProj1Graphics/plot1.png")
with(PC2, hist(Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = NULL, width = 480, height = 480, units = "px"))
title(main = "Plot 1.- Global Active Power")
dev.off()
