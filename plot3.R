# read in dataset
tab5data <- read.table("household_power_consumption.txt",header=TRUE,nrows=5)
classes <- sapply(tab5data,class)
data <- read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE,colClasses=classes)

# Subset data in R
dataSubset <- subset(data, Date =="1/2/2007" | Date == "2/2/2007")

#plot histogram
plot(dataSubset$Sub_metering_1,type="l",ylab="Global Active Power (kilowatts)",col="black")
lines(dataSubset$Sub_metering_2,type="l",col="red")
lines(dataSubset$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

#copy to png file
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()
