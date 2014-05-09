
# this r skript will produce plot 3

# set your working directory to the folder where the file below is stored

# import whole data
d.project1 <- read.table(file = "household_power_consumption.txt", sep=";", na.strings="?", header=T)


# subset the data with the two dates used
s.project1 <- d.project1[(d.project1$Date=="1/2/2007")|(d.project1$Date=="2/2/2007"),]

# convert column time, imported as character, to date
s.project1$Time <- strptime(paste(s.project1$Date, s.project1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")



# plot 3

png(filename="plot3.png", width=480, height=480)
par(mar=c(3,4,1,0.5))
plot(s.project1$Time,s.project1$Sub_metering_1,ylab="Energy sub metering", type="l")
lines(s.project1$Time,s.project1$Sub_metering_2, type="l", col="red")
lines(s.project1$Time,s.project1$Sub_metering_3, type="l", col="blue")
legend("topright",paste("Sub_metering_",c(1:3),sep=""),lty=1,col=c("black", "red", "blue"),bg="white")
dev.off()


