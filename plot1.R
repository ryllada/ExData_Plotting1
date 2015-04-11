electric_data <- read.table("../data.txt", sep = ";", header = T, 
                            na.strings = "?")
electric_data$Datetime <- strptime(paste(electric_data$Date, 
                                         electric_data$Time), 
                                   "%d/%m/%Y %H:%M:%S")
hist(electric_data$Global_active_power, main = "Global Active Power", 
     ylab = "Frequency", xlab = "Global Active Power (kilowatts)", 
     col = "red", breaks = 15, 
     ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))