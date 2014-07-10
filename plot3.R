

#to view the plot in r run the following code

plot(proj$t2, proj$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(proj$t2,proj$Sub_metering_2, type="l", col="red")
lines(proj$t2,proj$Sub_metering_3, type="l", col="blue")
legend("topright", lty=c(1,1), col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

#the code below will accurately reproduce the png of the plot as instructed.  
#It will not print to screen device

png(file="plot3.png")
plot(proj$t2, proj$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(proj$t2,proj$Sub_metering_2, type="l", col="red")
lines(proj$t2,proj$Sub_metering_3, type="l", col="blue")
legend("topright", lty=c(1,1), col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))


dev.off()
