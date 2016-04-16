if (!exists('febdata'))
  source('get_data.R')

png(filename = "plot2.png", width = 480, height = 480)

par(mfrow = c(1, 1)) 

with(febdata, plot(datetime,  
                   Global_active_power, 
                   type='l', 
                   ylab="Global Active Power (kilowatts)"))

dev.off()
