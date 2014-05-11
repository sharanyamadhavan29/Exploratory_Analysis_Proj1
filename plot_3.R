datamain <- read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",skip = 66637,nrows=2880,header = TRUE,sep=";",col.names = colnames(read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",nrow=1,header=TRUE,sep=";")))

setwd("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1")

temp <- paste(datamain$Date,datamain$Time)
datetime <- strptime(temp,"%d/%m/%Y %H:%M:%S")
final <- cbind(datamain,datetime)
with(final,plot(datetime,Sub_metering_1,type = "l",col="black",ylab="Energy sub metering"))
lines(final$datetime,final$Sub_metering_2,type="l",col="red")
lines(final$datetime,final$Sub_metering_3,type="l",col="blue")

dev.copy(png,file="plot_3.png")
dev.off()