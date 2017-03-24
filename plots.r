plot1 <- function (data) {
    hist(data$Global_active_power, col="red", 
         main = "Global Active Power", 
         xlab = "Global active power(kilowatts)")
}

plot2 <- function (data) {
    with(data, plot(Date, Global_active_power, 
                    type = "l", 
                    ylab = "Global active power(kilowatts)")
    )
}

plot3 <- function(data){
    with(data, plot(Date, Sub_metering_1, type = "l", ylab = "Energy sub metering"))
    with(data, lines(Date, Sub_metering_2, type = "l", col = "red"))
    with(data, lines(Date, Sub_metering_3, type = "l", col = "blue"))
    
    legend("topright", 
           col = c("black", "blue", "red"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty = 1)
}

plot4 <- function (data){
    plot2(data)
    plot3(data)
    with(data, plot(Date, Voltage, 
                    type = "l", 
                    ylab = "Voltage")
    )
    with(data, plot(Date, Global_reactive_power, 
                    type = "l")
    )
    

}