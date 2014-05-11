datamain <- read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",skip = 66637,nrows=2880,header = TRUE,sep=";",col.names = colnames(read.table("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1/datamain.txt",nrow=1,header=TRUE,sep=";")))


setwd("C:/Users/smadhavan/Desktop/Coursera/Exploratory Analysis/Project1")

hist(datamain$Global_active_power,col="Red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.copy(png,file="plot_1.png")
dev.off()
