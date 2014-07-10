plot(proj$t2, proj$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.copy(png, file = "plot2.png")
dev.off()