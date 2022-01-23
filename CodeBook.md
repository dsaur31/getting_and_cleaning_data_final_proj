Description of Raw Data
================================================================

The original data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data was collected from the accelerometers from the Samsung Galaxy S smartphone
A full description can reviewed here: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Noted Transformations
================================================================
Data was manipulated and cleaned in the following way:
1. Training, Testing and Feature datasets were combined
2. Variable names were made clear 
	"subject" for indivdual IDs 
	"activity" for log of physical activity)
3. A subset of just means and standard deviations were selected for all variables
4. Actitivty labels were factored in for easier analysis
5. label prefixes were expanded for clarity of analysis
	^t = time
	^f = frequency
	Acc = Accelerometer
	Gyro = Gyroscope
	Mag = Magnitude
	BodyBody = Body
7. A tideier dataset (final_data.txt) was produced, chaning the order of columns, and the order of rows
	"subject" and "activity" placed first in column order, then the data
	Rows ordered by "subject" and then "activity"
	
Variable names, descriptions and summary statistics
===============================================================
![image](https://user-images.githubusercontent.com/96789508/150662895-7251274d-44a4-4e27-a832-12edc2a52db7.png)

