if (!exists('febdata'))
  source('get_data.R')

png(filename = "plot3.png", width = 480, height = 480)

par(mfrow = c(1, 1)) 

with(febdata, 
     { 
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
               lty = c(1, 1, 1))
     }
)

dev.off()

