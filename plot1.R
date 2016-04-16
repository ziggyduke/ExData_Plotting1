if (!exists('febdata'))
  source('get_data.R')

png(filename = "plot1.png", width = 480, height = 480)

par(mfrow = c(1, 1)) 

hist(febdata$Global_active_power, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()