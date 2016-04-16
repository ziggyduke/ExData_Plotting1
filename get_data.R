library(dplyr)
if (!file.exists("data.zip"))
{
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  temp <- "data.zip"
  download.file(url, "data.zip", method="curl")
}

if (!file.exists("data.zip"))
{
  stop("Could not download file")
}

if (!file.exists("household_power_consumption.txt"))
{
  unzip("data.zip")
}

if (!file.exists("household_power_consumption.txt"))
{
  stop("Could not extract file!")
}


setClass('myDate')
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )

cols <- c("myDate", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
t <- read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";", colClasses = cols)

febdata <- filter(t, Date =='2007-02-01' | Date == '2007-02-02')
febdata$datetime <- as.POSIXct(strptime(paste(febdata$Date, febdata$Time), format="%Y-%m-%d %H:%M:%S"))
rm(t)

