# Loading the data
data <- read.table("household_power_consumption.txt",
                   sep = ';', header = T, na.strings = '?',
                   colClasses = c('character', 'character',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'numeric', 'numeric'))
# Subset data in R
dataSubset <- subset(data, Date =="1/2/2007" | Date == "2/2/2007")

# plot chart into file
png(filename = "plot1.png", width = 480, height = 480)

#plot histogram
hist(dataSubset$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()
