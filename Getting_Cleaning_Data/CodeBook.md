CODE BOOK

Created: 24-Oct-2.014
Version: 02

Data Set: Human Activity Recognition Using Smartphones Data Set (for more information about this dataset contact: activityrecognition@smartlab.ws)

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Acknowledgement: to following publication:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Distribution: this dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited (Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012).

Description: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Information: the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone - Samsung Galaxy S II- on their waist.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).

The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.

The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cut-off frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Variables: the set of variables that were estimated from these signals are: 

-	mean(): Mean value
-	std(): Standard deviation
-	mad(): Median absolute deviation 
-	max(): Largest value in array
-	min(): Smallest value in array
-	sma(): Signal magnitude area
-	energy(): Energy measure. Sum of the squares divided by the number of values.
-	iqr(): Interquartile range 
-	entropy(): Signal entropy
-	arCoeff(): Autorregresion coefficients with Burg order equal to 4
-	correlation(): correlation coefficient between two signals
-	maxInds(): index of the frequency component with largest magnitude
-	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
-	skewness(): skewness of the frequency domain signal 
-	kurtosis(): kurtosis of the frequency domain signal 
-	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
-	angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Data Cleaning: the raw data sets were processed with run_analisys.R script doing:

1.	Merges the training and the test sets to create one data set: on run_analisys.R script this data set corresponds to “DT”.
DT – Data Set: 10299 observations with 563 variables

2.	Extracts only the measurements on the mean and standard deviation for each measurement.

3.	Uses descriptive activity names to name the activities in the data set.

4.	Appropriately labels the data set with descriptive variable names: on run_analisys.R script this data set corresponds to “DT1”.
DT1 – Data Set: 10299 observations with 81 variables

5.	From the data set in step 4, creates a second, independent tidy data set where numeric variables are averaged for each activity and each subject: on run_analisys.R script this data set corresponds to “avg_by_act_sub” (average by activity and by subject).
sensor_avg_by_act_sub – Data Set: 180 observations with 81 variables


Variable (Variable Number / Name / Description / Remarks):
- 01: Subject / 30 volunteers within an age bracket of 19-48 years (1 to 30) / -
- 02: Activity / WALKING - WALKING_UPSTAIRS - WALKING_DOWNSTAIRS - SITTING - STANDING - LAYING / -
- 03-04-05: avg-tBodyAcc-mean()-X, Y, Z / triaxial average of the mean from body acceleration / t = time domain
- 06-07-08: avg-tBodyAcc-std()-X, Y, Z / triaxial average of the standard deviation from body acceleration / t = time domain
- 09-10-11: avg-tGravityAcc-mean()-X, Y, Z / triaxial average of the mean from gravity acceleration / t = time domain
- 12-13-14: avg-tGravityAcc-std()-X, Y, Z / triaxial average of the standard deviation from gravity acceleration / t = time domain
- 15-16-17: avg-tBodyAccJerk-mean()-X, Y, Z / triaxial average of the mean from body acceleration Jerk / t = time domain
- 18-19-20: avg-tBodyAccJerk-std()-X, Y, Z / triaxial average of the standard deviation from body acceleration Jerk / t = time domain
- 21-22-23: avg-tBodyGyro-mean()-X, Y, Z / triaxial average of the mean from body angular velocity / t = time domain
- 24-25-26: avg-tBodyGyro-std()-X, Y, Z / triaxial average of the standard deviation from body angular velocity / t = time domain
- 27-28-29: avg-tBodyGyroJerk-mean()-X, Y, Z / triaxial average of the mean from body angular speed Jerk / t = time domain
- 30-31-32: avg-tBodyGyroJerk-std()-X, Y, Z / triaxial average of the standard deviation from body angular speed Jerk / t = time domain
- 33: avg-tBodyAccMag-mean() / average of the mean from body acceleration Mag / t = time domain
- 34: avg-tBodyAccMag-std() / average of the standard deviation from body acceleration Mag / t = time domain
- 35: avg-tGravityAccMag-mean() / average of the mean from gravity acceleration Mag	/ t = time domain
- 36: avg-tGravityAccMag-std() / average of the standard deviation from gravity acceleration Mag / t = time domain
- 37: avg-tBodyAccJerkMag-mean() / average of the mean from body acceleration Jerk-Mag / t = time domain
- 38: avg-tBodyAccJerkMag-std() / average of the standard deviation from body acceleration Jerk-Mag / t = time domain
- 39: avg-tBodyGyroMag-mean() / average of the mean from body angular speed Mag / t = time domain
- 40: avg-tBodyGyroMag-std() / average of the standard deviation from body angular speed Mag / t = time domain
- 41: avg-tBodyGyroJerkMag-mean() / average of the mean from body angular speed Jerk-Mag / t = time domain
- 42: avg-tBodyGyroJerkMag-std() / average of the standard deviation from body angular speed Jerk-Mag / t = time domain
- 43-44-45: avg-fBodyAcc-mean()-X, Y, Z / triaxial average of the mean from body acceleration / f = frequency domain
- 46-47-48: avg-fBodyAcc-std()-X, Y, Z / triaxial average of the standard deviation from body acceleration / f = frequency domain
- 49-50-51: avg-fBodyAccJerk-mean()-X, Y, Z / triaxial average of the mean from body acceleration Jerk / f = frequency domain
- 52-53-54: avg-fBodyAccJerk-std()-X, Y, Z / triaxial average of the standard deviation from body acceleration Jerk / f = frequency domain
- 55-56-57: avg-fBodyGyro-mean()-X, Y, Z / triaxial average of the mean from body angular speed / f = frequency domain
- 58-59-60: avg-fBodyGyro-std()-X, Y, Z / triaxial average of the standard deviation from body angular speed / f = frequency domain
- 61: avg-fBodyAccMag-mean() / average of the mean from body acceleration speed Mag / f = frequency domain
- 62: avg-fBodyAccMag-std()	/ average of the standard deviation from body acceleration Mag / f = frequency domain
- 63: avg-fBodyBodyAccJerkMag-mean() / average of the mean from body acceleration Jerk-Mag / f = frequency domain
- 64: avg-fBodyBodyAccJerkMag-std()	/ average of the standard deviation from body acceleration Jerk-Mag / f = frequency domain
- 65: avg-fBodyBodyGyroMag-mean() / average of the mean from body angular speed / f = frequency domain
- 66: avg-fBodyBodyGyroMag-std() / average of the standard deviation from body angular speed / f = frequency domain
- 67: avg-fBodyBodyGyroJerkMag-mean() / average of the mean from body angular speed Jerk-Mag / f = frequency domain
- 68: avg-fBodyBodyGyroJerkMag-std() / average of the standard deviation from body angular speed Jerk-Mag / f = frequency domain

