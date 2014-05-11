datamain <- read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",skip = 66637,nrows=2880,header = TRUE,sep=";",col.names = colnames(read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",nrow=1,header=TRUE,sep=";")))

setwd("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1")

temp <- paste(datamain$Date,datamain$Time)
temp1 <- strptime(temp,"%d/%m/%Y %H:%M:%S")
final <- cbind(datamain,temp1)
with(final,plot(temp1,Global_active_power,type = "l"))

dev.copy(png,file="plot_2.png")
dev.off()
