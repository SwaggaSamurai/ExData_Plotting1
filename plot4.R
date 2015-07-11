##This plot is for the Coursera Data Science Specialization, Exploratory Data Anlysis course
##This script and the next three subsequent scripts will read in the Electric Power Consumption txt data, 
##Create a plot of some sort using a subset of the data, then export a .png file of the plot.

##Goals of this Excersize:
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

##Name each of the plot files as plot1.png, plot2.png, etc.

##Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.

##Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)



## Plot 4:
## Plot four will be a combination of the plots 1and 2 followed by 2 additional plots, Voltage Vs. Time and Global Reactive power
##Vs. Time.

##Source the loaddata.R script to gather the necessary data:
#source('loaddata.R')

##Open PNG Device
png(filename='plot4.png')

##Layout organization of plots:
par(mfrow=c(2,2))

##Create Plot In Top Left Corner(global active power vs time):
plot(maindata$DateTime, maindata$Global_active_power, ylab='Global Active Power',xlab='', type='l')

##Create Plot In Top Right Corner (voltage vs time):
plot(maindata$DateTime, maindata$Voltage, ylab='Voltage',xlab='datetime', type='l')

##Create Bottom Left Plot (sub metering-plot3)
plot(maindata$DateTime, maindata$Sub_metering_1, ylab='Energy sub metering',xlab='', type='l')
lines(maindata$DateTime, maindata$Sub_metering_2,col='red')
lines(maindata$DateTime, maindata$Sub_metering_3,col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty='solid')

## Create Bottom Right Plot(Global Reactive Power Vs Time):
plot(maindata$DateTime, maindata$Global_reactive_power, ylab='Global_Reactive_Power',xlab='datetime', type='l')


##Turn Off PNG Device
dev.off()
message('done')