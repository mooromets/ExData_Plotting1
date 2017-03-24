## load data 
if (!file.exists("household_power_consumption.txt")) {
    temp <- tempfile() #download into temp file
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
    unzip(temp)
    unlink(temp) #remove temp file    
}
data <- read.table("household_power_consumption.txt", 
                   sep = ';',
                   colClasses = c("character", "character", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", "numeric", "numeric"),
                   na.strings = "?", header = TRUE)

## transform Date
library(lubridate)
data <- transform(data, Date = dmy_hms(paste(Date, Time)))

## filter unused lines
data <- data[ data$Date >= as.Date("2007-02-01", "%Y-%m-%d") 
      & data$Date < as.Date("2007-02-03", "%Y-%m-%d"), ]
