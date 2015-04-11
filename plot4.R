electric_data <- read.table("../data.txt", sep = ";", header = T, 
                            na.strings = "?")
electric_data$Datetime <- strptime(paste(electric_data$Date, 
                                         electric_data$Time), 
                                   "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2))

plot(electric_data$Datetime, electric_data$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")
plot(electric_data$Datetime, electric_data$Voltage, type = "l", 
     ylab = "Voltage", xlab = "datetime")
plot(electric_data$Datetime, electric_data$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "", col = "black")
points(electric_data$Datetime, electric_data$Sub_metering_2, type = "l", 
       xlab = "", ylab = "Sub_metering_2", col = "red")
points(electric_data$Datetime, electric_data$Sub_metering_3, type = "l", 
       xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )
plot(electric_data$Datetime, electric_data$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))
