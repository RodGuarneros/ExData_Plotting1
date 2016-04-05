# Segunda grafica (serie de tiempo)

dev.copy(png, file = "plot2.png")
with(PC2, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
title(main = "Plot 2.- Time Serie of Global Active Power")
dev.off()