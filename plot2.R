# read in dataset
# Loading the data
data <- read.table("household_power_consumption.txt",
                   sep = ';', header = T, na.strings = '?',
                   colClasses = c('character', 'character',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'numeric', 'numeric'))


data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Subsetting the desired chunk of data
dataSubset <- subset(data,
               as.Date(DateTime) >= as.Date("2007-02-01") &
                 as.Date(DateTime) <= as.Date("2007-02-02"))


# plot chart into file
png(filename = "plot2.png", width = 480, height = 480)

#plot histogram
plot(dataSubset$DateTime, dataSubset$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()
