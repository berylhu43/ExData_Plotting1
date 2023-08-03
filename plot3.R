file<-read.table('/Users/yuxuanhu/Desktop/coursera_R/rprog_data_ProgAssignment3-data/ExData_Plotting1/household_power_consumption.txt'
                 , sep = ';', header = TRUE)
feb_first<-subset(file, Date=='1/2/2007')
feb_second<-subset(file, Date=='2/2/2007')
feb<-rbind(feb_first,feb_second)

feb$day<- paste(feb$Date, feb$Time, sep = ' ')
feb$day<-strptime(feb$day, format = "%d/%m/%Y %H:%M:%S")

#plot3
plot(feb$day, feb$Sub_metering_1,type = 'l', xaxt='n', xlab = '', ylab = 'Energy sub metering')
lines(feb$day, feb$Sub_metering_2, col='red')
lines(feb$day, feb$Sub_metering_3, col='blue')
legend('topright', legend=c('sub_metering_1','sub_metering_2','sub_metering_3'), lty = 1:1:1, col = c('black','red','blue'))
axis.POSIXct(1, at="2007-02-01 00:00:00 CST", labels = 'Thur')
axis.POSIXct(1, at="2007-02-02 00:00:00 CST", labels = 'Fri')
axis.POSIXct(1, at="2007-02-02 23:59:00 CST", labels = 'Sat')