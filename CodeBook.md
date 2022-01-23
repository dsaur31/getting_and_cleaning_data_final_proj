================================================================
Description of Raw Data
================================================================
The original data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data was collected from the accelerometers from the Samsung Galaxy S smartphone
A full description can reviewed here: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
================================================================
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
================================================================
Variable names, descriptions and summary statistics
================================================================
variable_name	description	n	min	max	mean
subject	individual identifier	180	1	30	15.5
activity	physical activity recorded	180	1	6	3.5
timeBodyAccelerometer.mean...X	Time - Body Acceleration - MEAN (X axis)	180	0.221598244	0.30146102	0.274302742
timeBodyAccelerometer.mean...Y	Time - Body Acceleration - MEAN (Y axis)	180	-0.040513953	-0.001308288	-0.017875524
timeBodyAccelerometer.mean...Z	Time - Body Acceleration - MEAN (Z axis)	180	-0.1525139	-0.075378469	-0.109163816
timeBodyAccelerometer.std...X	Time - Body Acceleration - STANDARD DEVIATION (X axis)	180	-0.996068635	0.626917071	-0.557690076
timeBodyAccelerometer.std...Y	Time - Body Acceleration - STANDARD DEVIATION (Y axis)	180	-0.990240947	0.616937015	-0.460462635
timeBodyAccelerometer.std...Z	Time - Body Acceleration - STANDARD DEVIATION (Z axis)	180	-0.987658662	0.609017879	-0.575560246
timeGravityAccelerometer.mean...X	Time - Gravity Acceleration - MEAN (X axis)	180	-0.680043155	0.974508732	0.697477506
timeGravityAccelerometer.mean...Y	Time - Gravity Acceleration - MEAN (Y axis)	180	-0.479894843	0.956593814	-0.016212836
timeGravityAccelerometer.mean...Z	Time - Gravity Acceleration - MEAN (Z axis)	180	-0.49508872	0.957873042	0.074127871
timeGravityAccelerometer.std...X	Time - Gravity Acceleration - STANDARD DEVIATION (X axis)	180	-0.996764227	-0.829554948	-0.963752531
timeGravityAccelerometer.std...Y	Time - Gravity Acceleration - STANDARD DEVIATION (Y axis)	180	-0.994247649	-0.643578361	-0.95242956
timeGravityAccelerometer.std...Z	Time - Gravity Acceleration - STANDARD DEVIATION (Z axis)	180	-0.99095725	-0.610161166	-0.936401042
timeBodyAccelerometerJerk.mean...X	Time - Linear Acceleration - MEAN (X axis)	180	0.042688099	0.130193044	0.07947356
timeBodyAccelerometerJerk.mean...Y	Time - Linear Acceleration - MEAN (Y axis)	180	-0.038687211	0.056818586	0.00756521
timeBodyAccelerometerJerk.mean...Z	Time - Linear Acceleration - MEAN (Z axis)	180	-0.067458392	0.038053359	-0.004953403
timeBodyAccelerometerJerk.std...X	Time - Linear Acceleration - STANDARD DEVIATION (X axis)	180	-0.994604542	0.544273037	-0.5949467
timeBodyAccelerometerJerk.std...Y	Time - Linear Acceleration - STANDARD DEVIATION (Y axis)	180	-0.989513566	0.355306717	-0.565414714
timeBodyAccelerometerJerk.std...Z	Time - Linear Acceleration - STANDARD DEVIATION (Z axis)	180	-0.993288313	0.031015708	-0.735957689
timeBodyGyroscope.mean...X	Time - Body Angular Velocity - MEAN (X axis)	180	-0.205775427	0.192704476	-0.03243716
timeBodyGyroscope.mean...Y	Time - Body Angular Velocity - MEAN (Y axis)	180	-0.204205356	0.027470756	-0.074259572
timeBodyGyroscope.mean...Z	Time - Body Angular Velocity - MEAN (Z axis)	180	-0.072454603	0.179102058	0.087444647
timeBodyGyroscope.std...X	Time - Body Angular Velocity - STANDARD DEVIATION (X axis)	180	-0.994276591	0.267657219	-0.691639903
timeBodyGyroscope.std...Y	Time - Body Angular Velocity - STANDARD DEVIATION (Y axis)	180	-0.994210472	0.476518714	-0.65330203
timeBodyGyroscope.std...Z	Time - Body Angular Velocity - STANDARD DEVIATION (Z axis)	180	-0.985538363	0.564875818	-0.616435294
timeBodyGyroscopeJerk.mean...X	Time - Angular Velocity - MEAN (X axis)	180	-0.157212539	-0.022091627	-0.096056796
timeBodyGyroscopeJerk.mean...Y	Time - Angular Velocity - MEAN (Y axis)	180	-0.076808992	-0.013202277	-0.042692782
timeBodyGyroscopeJerk.mean...Z	Time - Angular Velocity - MEAN (Z axis)	180	-0.092499853	-0.006940664	-0.054801883
timeBodyGyroscopeJerk.std...X	Time - Angular Velocity - STANDARD DEVIATION (X axis)	180	-0.996542541	0.17914865	-0.703632715
timeBodyGyroscopeJerk.std...Y	Time - Angular Velocity - STANDARD DEVIATION (Y axis)	180	-0.997081576	0.295945926	-0.763551835
timeBodyGyroscopeJerk.std...Z	Time - Angular Velocity - STANDARD DEVIATION (Z axis)	180	-0.995380795	0.193206499	-0.709559184
timeBodyAccelerometerMagnitude.mean..	Time - Body Acceleration Magnitude - MEAN	180	-0.986493197	0.644604325	-0.497289667
timeBodyAccelerometerMagnitude.std..	Time - Body Acceleration Magnitude - STANDARD DEVIATION	180	-0.986464543	0.428405923	-0.543908671
timeGravityAccelerometerMagnitude.mean..	Time - Gravity Acceleration Magnitude - MEAN	180	-0.986493197	0.644604325	-0.497289667
timeGravityAccelerometerMagnitude.std..	Time - Gravity Acceleration Magnitude - STANDARD DEVIATION	180	-0.986464543	0.428405923	-0.543908671
timeBodyAccelerometerJerkMagnitude.mean..	Time - Body Acceleration Magnitude - MEAN	180	-0.992814715	0.434490401	-0.607929592
timeBodyAccelerometerJerkMagnitude.std..	Time - Body Acceleration Magnitude - STANDARD DEVIATION	180	-0.994646917	0.450612066	-0.58417561
timeBodyGyroscopeMagnitude.mean..	Time - Angular Velocity - MEAN	180	-0.980740847	0.418004609	-0.565163077
timeBodyGyroscopeMagnitude.std..	Time - Angular Velocity - STANDARD DEVIATION	180	-0.981372676	0.29997598	-0.63039472
timeBodyGyroscopeJerkMagnitude.mean..	Time - Angular Velocity - MEAN	180	-0.997322527	0.087581662	-0.7363693
timeBodyGyroscopeJerkMagnitude.std..	Time - Angular Velocity - STANDARD DEVIATION	180	-0.997666072	0.250173204	-0.755015189
frequencyBodyAccelerometer.mean...X	Frequency - Body Acceleration - MEAN (X axis)	180	-0.995249933	0.537012022	-0.575799984
frequencyBodyAccelerometer.mean...Y	Frequency - Body Acceleration - MEAN (Y axis)	180	-0.989034304	0.524187687	-0.488732713
frequencyBodyAccelerometer.mean...Z	Frequency - Body Acceleration - MEAN (Z axis)	180	-0.989473927	0.280735952	-0.629738754
frequencyBodyAccelerometer.std...X	Frequency - Body Acceleration - STANDARD DEVIATION (X axis)	180	-0.99660457	0.658506543	-0.552201112
frequencyBodyAccelerometer.std...Y	Frequency - Body Acceleration - STANDARD DEVIATION (Y axis)	180	-0.990680395	0.560191344	-0.48147873
frequencyBodyAccelerometer.std...Z	Frequency - Body Acceleration - STANDARD DEVIATION (Z axis)	180	-0.987224804	0.687124164	-0.582361415
frequencyBodyAccelerometerJerk.mean...X	Frequency - Linear Acceleration - MEAN (X axis)	180	-0.994630797	0.474317256	-0.613928222
frequencyBodyAccelerometerJerk.mean...Y	Frequency - Linear Acceleration - MEAN (Y axis)	180	-0.989398824	0.276716853	-0.588163069
frequencyBodyAccelerometerJerk.mean...Z	Frequency - Linear Acceleration - MEAN (Z axis)	180	-0.992018448	0.157775692	-0.714358487
frequencyBodyAccelerometerJerk.std...X	Frequency - Linear Acceleration - STANDARD DEVIATION (X axis)	180	-0.995073759	0.476803887	-0.612103283
frequencyBodyAccelerometerJerk.std...Y	Frequency - Linear Acceleration - STANDARD DEVIATION (Y axis)	180	-0.990468083	0.349771285	-0.570730969
frequencyBodyAccelerometerJerk.std...Z	Frequency - Linear Acceleration - STANDARD DEVIATION (Z axis)	180	-0.99310776	-0.006236475	-0.756489426
frequencyBodyGyroscope.mean...X	Frequency - Body Angular Velocity - MEAN (X axis)	180	-0.993122609	0.474962448	-0.636739605
frequencyBodyGyroscope.mean...Y	Frequency - Body Angular Velocity - MEAN (Y axis)	180	-0.994025488	0.32881701	-0.676686801
frequencyBodyGyroscope.mean...Z	Frequency - Body Angular Velocity - MEAN (Z axis)	180	-0.985957788	0.49241438	-0.604391244
frequencyBodyGyroscope.std...X	Frequency - Body Angular Velocity - STANDARD DEVIATION (X axis)	180	-0.994652185	0.196613287	-0.711035658
frequencyBodyGyroscope.std...Y	Frequency - Body Angular Velocity - STANDARD DEVIATION (Y axis)	180	-0.994353087	0.646233637	-0.645433416
frequencyBodyGyroscope.std...Z	Frequency - Body Angular Velocity - STANDARD DEVIATION (Z axis)	180	-0.986725275	0.522454216	-0.657746586
frequencyBodyAccelerometerMagnitude.mean..	Frequency - Body Acceleration Magnitude - MEAN	180	-0.986800645	0.586637551	-0.536516693
frequencyBodyAccelerometerMagnitude.std..	Frequency - Body Acceleration Magnitude - STANDARD DEVIATION	180	-0.987648484	0.178684581	-0.620963293
frequencyBodyAccelerometerJerkMagnitude.mean..	Frequency - Body Acceleration Magnitude - MEAN	180	-0.993998276	0.538404846	-0.575617493
frequencyBodyAccelerometerJerkMagnitude.std..	Frequency - Body Acceleration Magnitude - STANDARD DEVIATION	180	-0.994366668	0.316346415	-0.599160868
frequencyBodyGyroscopeMagnitude.mean..	Frequency - Angular Velocity - MEAN	180	-0.986535242	0.203979765	-0.6670991
frequencyBodyGyroscopeMagnitude.std..	Frequency - Angular Velocity - STANDARD DEVIATION	180	-0.981468842	0.236659662	-0.67232235
frequencyBodyGyroscopeJerkMagnitude.mean..	Frequency - Angular Velocity - MEAN	180	-0.997617389	0.146618569	-0.756385271
frequencyBodyGyroscopeJerkMagnitude.std..	Frequency - Angular Velocity - STANDARD DEVIATION	180	-0.997585231	0.287834616	-0.771517052
