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
variable_name	description
subject	individual identifier
activity	physical activity recorded
timeBodyAccelerometer.mean...X	Time - Body Acceleration - MEAN (X axis)
timeBodyAccelerometer.mean...Y	Time - Body Acceleration - MEAN (Y axis)
timeBodyAccelerometer.mean...Z	Time - Body Acceleration - MEAN (Z axis)
timeBodyAccelerometer.std...X	Time - Body Acceleration - STANDARD DEVIATION (X axis)
timeBodyAccelerometer.std...Y	Time - Body Acceleration - STANDARD DEVIATION (Y axis)
timeBodyAccelerometer.std...Z	Time - Body Acceleration - STANDARD DEVIATION (Z axis)
timeGravityAccelerometer.mean...X	Time - Gravity Acceleration - MEAN (X axis)
timeGravityAccelerometer.mean...Y	Time - Gravity Acceleration - MEAN (Y axis)
timeGravityAccelerometer.mean...Z	Time - Gravity Acceleration - MEAN (Z axis)
timeGravityAccelerometer.std...X	Time - Gravity Acceleration - STANDARD DEVIATION (X axis)
timeGravityAccelerometer.std...Y	Time - Gravity Acceleration - STANDARD DEVIATION (Y axis)
timeGravityAccelerometer.std...Z	Time - Gravity Acceleration - STANDARD DEVIATION (Z axis)
timeBodyAccelerometerJerk.mean...X	Time - Linear Acceleration - MEAN (X axis)
timeBodyAccelerometerJerk.mean...Y	Time - Linear Acceleration - MEAN (Y axis)
timeBodyAccelerometerJerk.mean...Z	Time - Linear Acceleration - MEAN (Z axis)
timeBodyAccelerometerJerk.std...X	Time - Linear Acceleration - STANDARD DEVIATION (X axis)
timeBodyAccelerometerJerk.std...Y	Time - Linear Acceleration - STANDARD DEVIATION (Y axis)
timeBodyAccelerometerJerk.std...Z	Time - Linear Acceleration - STANDARD DEVIATION (Z axis)
timeBodyGyroscope.mean...X	Time - Body Angular Velocity - MEAN (X axis)
timeBodyGyroscope.mean...Y	Time - Body Angular Velocity - MEAN (Y axis)
timeBodyGyroscope.mean...Z	Time - Body Angular Velocity - MEAN (Z axis)
timeBodyGyroscope.std...X	Time - Body Angular Velocity - STANDARD DEVIATION (X axis)
timeBodyGyroscope.std...Y	Time - Body Angular Velocity - STANDARD DEVIATION (Y axis)
timeBodyGyroscope.std...Z	Time - Body Angular Velocity - STANDARD DEVIATION (Z axis)
timeBodyGyroscopeJerk.mean...X	Time - Angular Velocity - MEAN (X axis)
timeBodyGyroscopeJerk.mean...Y	Time - Angular Velocity - MEAN (Y axis)
timeBodyGyroscopeJerk.mean...Z	Time - Angular Velocity - MEAN (Z axis)
timeBodyGyroscopeJerk.std...X	Time - Angular Velocity - STANDARD DEVIATION (X axis)
timeBodyGyroscopeJerk.std...Y	Time - Angular Velocity - STANDARD DEVIATION (Y axis)
timeBodyGyroscopeJerk.std...Z	Time - Angular Velocity - STANDARD DEVIATION (Z axis)
timeBodyAccelerometerMagnitude.mean..	Time - Body Acceleration Magnitude - MEAN
timeBodyAccelerometerMagnitude.std..	Time - Body Acceleration Magnitude - STANDARD DEVIATION
timeGravityAccelerometerMagnitude.mean..	Time - Gravity Acceleration Magnitude - MEAN
timeGravityAccelerometerMagnitude.std..	Time - Gravity Acceleration Magnitude - STANDARD DEVIATION
timeBodyAccelerometerJerkMagnitude.mean..	Time - Body Acceleration Magnitude - MEAN
timeBodyAccelerometerJerkMagnitude.std..	Time - Body Acceleration Magnitude - STANDARD DEVIATION
timeBodyGyroscopeMagnitude.mean..	Time - Angular Velocity - MEAN
timeBodyGyroscopeMagnitude.std..	Time - Angular Velocity - STANDARD DEVIATION
timeBodyGyroscopeJerkMagnitude.mean..	Time - Angular Velocity - MEAN
timeBodyGyroscopeJerkMagnitude.std..	Time - Angular Velocity - STANDARD DEVIATION
frequencyBodyAccelerometer.mean...X	Frequency - Body Acceleration - MEAN (X axis)
frequencyBodyAccelerometer.mean...Y	Frequency - Body Acceleration - MEAN (Y axis)
frequencyBodyAccelerometer.mean...Z	Frequency - Body Acceleration - MEAN (Z axis)
frequencyBodyAccelerometer.std...X	Frequency - Body Acceleration - STANDARD DEVIATION (X axis)
frequencyBodyAccelerometer.std...Y	Frequency - Body Acceleration - STANDARD DEVIATION (Y axis)
frequencyBodyAccelerometer.std...Z	Frequency - Body Acceleration - STANDARD DEVIATION (Z axis)
frequencyBodyAccelerometerJerk.mean...X	Frequency - Linear Acceleration - MEAN (X axis)
frequencyBodyAccelerometerJerk.mean...Y	Frequency - Linear Acceleration - MEAN (Y axis)
frequencyBodyAccelerometerJerk.mean...Z	Frequency - Linear Acceleration - MEAN (Z axis)
frequencyBodyAccelerometerJerk.std...X	Frequency - Linear Acceleration - STANDARD DEVIATION (X axis)
frequencyBodyAccelerometerJerk.std...Y	Frequency - Linear Acceleration - STANDARD DEVIATION (Y axis)
frequencyBodyAccelerometerJerk.std...Z	Frequency - Linear Acceleration - STANDARD DEVIATION (Z axis)
frequencyBodyGyroscope.mean...X	Frequency - Body Angular Velocity - MEAN (X axis)
frequencyBodyGyroscope.mean...Y	Frequency - Body Angular Velocity - MEAN (Y axis)
frequencyBodyGyroscope.mean...Z	Frequency - Body Angular Velocity - MEAN (Z axis)
frequencyBodyGyroscope.std...X	Frequency - Body Angular Velocity - STANDARD DEVIATION (X axis)
frequencyBodyGyroscope.std...Y	Frequency - Body Angular Velocity - STANDARD DEVIATION (Y axis)
frequencyBodyGyroscope.std...Z	Frequency - Body Angular Velocity - STANDARD DEVIATION (Z axis)
frequencyBodyAccelerometerMagnitude.mean..	Frequency - Body Acceleration Magnitude - MEAN
frequencyBodyAccelerometerMagnitude.std..	Frequency - Body Acceleration Magnitude - STANDARD DEVIATION
frequencyBodyAccelerometerJerkMagnitude.mean..	Frequency - Body Acceleration Magnitude - MEAN
frequencyBodyAccelerometerJerkMagnitude.std..	Frequency - Body Acceleration Magnitude - STANDARD DEVIATION
frequencyBodyGyroscopeMagnitude.mean..	Frequency - Angular Velocity - MEAN
frequencyBodyGyroscopeMagnitude.std..	Frequency - Angular Velocity - STANDARD DEVIATION
frequencyBodyGyroscopeJerkMagnitude.mean..	Frequency - Angular Velocity - MEAN
frequencyBodyGyroscopeJerkMagnitude.std..	Frequency - Angular Velocity - STANDARD DEVIATION
![image](https://user-images.githubusercontent.com/96789508/150662895-7251274d-44a4-4e27-a832-12edc2a52db7.png)

