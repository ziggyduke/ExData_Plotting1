if (!exists('febdata'))
  source('get_data.R')

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

with(febdata, {
   # Plot 1
   plot(datetime, 
        Global_active_power, 
        ylab="Global Active Power", 
        type="l")
   
   # Plot 2
   plot(datetime, 
        Voltage, 
        ylab = "Voltage", 
        type="l") 
   
   # Plot 3
   plot(datetime, 
        Sub_metering_1, 
        type='l', 
        col="black", 
        ylab="Energy sub metering")
   
   lines(datetime, 
         Sub_metering_2, 
         type='l', 
         col="red")
   
   lines(datetime, 
         Sub_metering_3, 
         type='l', 
         col="blue")
   
   legend("topright", 
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          col = c("black", "red", "blue"),
          lty = c(1, 1, 1), 
          bty="n")
   
   # Plot 4
   plot(datetime, 
        Global_reactive_power,  
        type="l")
})


dev.off()
