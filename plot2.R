electric_data <- read.table("../data.txt", sep = ";", header = T, 
                            na.strings = "?")
electric_data$Datetime <- strptime(paste(electric_data$Date, 
                                         electric_data$Time), 
                                   "%d/%m/%Y %H:%M:%S")
plot(electric_data$Datetime, electric_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")