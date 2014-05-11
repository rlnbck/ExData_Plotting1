# read in dataset
tab5data <- read.table("household_power_consumption.txt",header=TRUE,nrows=5)
classes <- sapply(tab5data,class)
data <- read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE,colClasses=classes)

# Subset data in R
dataSubset <- subset(data, Date =="1/2/2007" | Date == "2/2/2007")

#plot histogram
plot(dataSubset$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")


#copy to png file
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()
