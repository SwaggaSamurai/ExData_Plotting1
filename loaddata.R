##This script will load the data necessary to design plots 1-4 in Project 1 of the Exploratory Data Analysis Excersize for the Coursera Data Science Specialization


library(lubridate)

##Load Data(Download IF not already exists)
if (!file.exists('household_power_consumption.txt')) {
        
        download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',destfile="household_power_consumption.zip")
        unzip('household_power_consumption.zip')
}


##Read Data        
maindata<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings='?',colClasses=c(rep('character', 2), rep('numeric', 7)))
##Alter Date and Time Columns to Be in Date and Time Format from Factor
maindata$Date<-dmy(maindata$Date)
maindata$Time<-hms(maindata$Time)

##Combine Date and Time into One Column
maindata$DateTime<-maindata$Date+maindata$Time
##Subset Data
maindata<- subset(maindata, maindata$Date>'2007-01-31' & maindata$Date<'2007-02-02')

write.csv(maindata,"maindata.csv")

message('done')