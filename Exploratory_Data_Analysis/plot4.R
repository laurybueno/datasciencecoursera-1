# Set the working directory
path.expand("~")
setwd("~/Data_Analysis/Coursera/Exploratory_Data_Analysis/Assignment_1")

# Creates Temp File
tmp <- tempfile()

# Define File Url - where datasets are
fileUrl <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"

# Define DataSet File
file <- "household_power_consumption.dat"

# Get Temporary Directory
tmpdir <- tempdir()

# Download File to a Temp File & Directory
download.file(fileUrl, tmp)

# Unzip the file into the dir
unzip(tmp, exdir = tmpdir)

# Get the path & name of the unzipped file
unzipfile <- paste(tmpdir, "household_power_consumption.txt", sep="/")

# Call data.table package
library("data.table")

# Read zipfile and creates DT (data table)
DT <- fread(unzipfile, na.strings = "?")

# Convert Dates -Symbol Meaning:
# %d: day as a number (0-31)  01-31 
# %a: abbreviated weekday (Mon) - %A: unabbreviated weekday (Monday)
# %m:  month (00-12)  00-12 
# %b: abbreviated month (Jan) - %B abbreviated month (January)
# %y: 2-digit year (07) - %Y: 4-digit year (2007)

DT$Date <- as.Date(DT$Date, "%d/%m/%Y")

# Subset Dates to analysis (2007-02-01 to 2007-02-02)
DT <- DT[DT$Date >= "2007-02-01" & DT$Date <= "2007-02-02"]

# Change Col Classes
DT<- transform(DT, Date_Time = as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
DT <- DT[, Global_active_power := as.numeric(Global_active_power)]
DT <- DT[,Global_reactive_power := as.numeric(Global_reactive_power)]
DT <- DT[,Voltage := as.numeric(Voltage)]
DT <- DT[,Global_intensity := as.numeric(Global_intensity)]
DT <- DT[,Sub_metering_1 := as.numeric(Sub_metering_1)]
DT <- DT[,Sub_metering_2 := as.numeric(Sub_metering_2)]

# Plot 4: ExDataCP1Plot4.png
par(mfrow=c(2,2))

# Plot 4.1
plot(DT$Date_Time,DT$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# Plot 4.2
plot(DT$Date_Time,DT$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Plot 4.3
plot(DT$Date_Time,DT$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(DT$Date_Time,DT$Sub_metering_2,col="red")
lines(DT$Date_Time,DT$Sub_metering_3,col="blue")

# Plot 4.4
plot(DT$Date_Time,DT$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

# Copy plot to a PNG file
dev.copy(png, file="plot4.png", width=480, height=480)

# Close the PNG device
dev.off()
