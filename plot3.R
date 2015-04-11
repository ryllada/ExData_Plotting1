electric_data <- read.table("../data.txt", sep = ";", header = T, 
                            na.strings = "?")
electric_data$Datetime <- strptime(paste(electric_data$Date, 
                                         electric_data$Time), 
                                   "%d/%m/%Y %H:%M:%S")
plot(electric_data$Datetime, electric_data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
points(electric_data$Datetime, electric_data$Sub_metering_2, type = "l", 
       xlab = "", ylab = "Energy sub metering", col = "red")
points(electric_data$Datetime, electric_data$Sub_metering_3, type = "l", 
       xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))