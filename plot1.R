
#load data file
proj<-read.csv("household_power_consumption.txt", header=TRUE, sep=';')

#only select days of interest
proj<-proj[(proj$Date =="2/2/2007" | proj$Date =="1/2/2007" ),]


#change data to numeric
proj$Global_active_power<-as.numeric(as.character(proj$Global_active_power))
proj$Global_reactive_power<-as.numeric(as.character(proj$Global_reactive_power))
proj$Voltage<-as.numeric(as.character(proj$Voltage))
proj$Sub_metering_1<-as.numeric(as.character(proj$Sub_metering_1))
proj$Sub_metering_2<-as.numeric(as.character(proj$Sub_metering_2))
proj$Sub_metering_3<-as.numeric(as.character(proj$Sub_metering_3))
proj$Global_intensity<-as.numeric(as.character(proj$Global_intensity))


#add date time field
proj$t2<-paste(proj$Date, proj$Time, sep=" ")

#change data to date-time
proj$t2 <-strptime(proj$t2, format="%d/%m/%Y %H:%M:%S")

hist(proj$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()
