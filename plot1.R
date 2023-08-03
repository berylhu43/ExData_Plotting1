file<-read.table('/Users/yuxuanhu/Desktop/coursera_R/rprog_data_ProgAssignment3-data/ExData_Plotting1/household_power_consumption.txt'
                 , sep = ';', header = TRUE)
feb_first<-subset(file, Date=='1/2/2007')
feb_second<-subset(file, Date=='2/2/2007')
feb<-rbind(feb_first,feb_second)

#plot1
feb$Global_active_power<-as.numeric(feb$Global_active_power)
hist(feb$Global_active_power, breaks = 13, col = 'red', main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency')




