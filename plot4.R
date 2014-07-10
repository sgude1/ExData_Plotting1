#to view the plot in r run the following code


par(mfrow=c(2,2))

#1
plot(proj$t2, proj$Global_active_power, xlab="", ylab="Global Active Power", type="l")
#2
plot(proj$t2, proj$Voltage, xlab="datetime", ylab="Voltage", type="l")

#3
plot(proj$t2, proj$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(proj$t2,proj$Sub_metering_2, type="l", col="red")
lines(proj$t2,proj$Sub_metering_3, type="l", col="blue")
legend("topright", lty=c(1,1), bty="n", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

#4
plot(proj$t2, proj$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")


#the code below will accurately reproduce the png of the plot as instructed.  
#It will not print to screen device

png(file="plot4.png")
par(mfrow=c(2,2))

#1
plot(proj$t2, proj$Global_active_power, xlab="", ylab="Global Active Power", type="l")
#2
plot(proj$t2, proj$Voltage, xlab="datetime", ylab="Voltage", type="l")

#3
plot(proj$t2, proj$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(proj$t2,proj$Sub_metering_2, type="l", col="red")
lines(proj$t2,proj$Sub_metering_3, type="l", col="blue")
legend("topright", lty=c(1,1), bty="n", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

#4
plot(proj$t2, proj$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()