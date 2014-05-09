# this r skript will produce plot 1

# set your working directory to the folder where the file below is stored
# import whole data
d.project1 <- read.table(file = "household_power_consumption.txt", sep=";", na.strings="?", header=T)


# subset the data with the two dates used
s.project1 <- d.project1[(d.project1$Date=="1/2/2007")|(d.project1$Date=="2/2/2007"),]

# convert column time, imported as character, to date
s.project1$Time <- strptime(paste(s.project1$Date, s.project1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")


# plot 1


png(filename="plot1.png", width=480, height=480)
par(mar=c(4,4,2,0.5))
hist(s.project1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


