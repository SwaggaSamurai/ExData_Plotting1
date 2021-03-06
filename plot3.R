##This plot is for the Coursera Data Science Specialization, Exploratory Data Anlysis course
##This script and the next three subsequent scripts will read in the Electric Power Consumption txt data, 
##Create a plot of some sort using a subset of the data, then export a .png file of the plot.

##Goals of this Excersize:
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

##Name each of the plot files as plot1.png, plot2.png, etc.

##Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.

##Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)



## Plot 3:
## Plot three will be a line plot of teh Sub metering 1,2 and 3 in different colors, and a legend attached.

##Source the loaddata.R script to gather the necessary data:
source('loaddata.R')

##Open PNG Device
png(filename='plot3.png')
##Create Plot
plot(maindata$DateTime, maindata$Sub_metering_1, ylab='Energy sub metering',xlab='', type='l')
lines(maindata$DateTime, maindata$Sub_metering_2,col='red')
lines(maindata$DateTime, maindata$Sub_metering_3,col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty='solid')

##Turn Off PNG Device
dev.off()
message('done')
