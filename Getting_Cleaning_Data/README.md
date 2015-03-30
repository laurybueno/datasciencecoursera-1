README:

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REMARKS:
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. On R Code, the final data set (sensor_avg_by_act_sub) can include or not the variables for "meanFreq()".
2. Including variables for "meanFreq()", giving 81 variables: on mark [1] of the R Code, put the symbol "#" on line "!= grepl("meanFreq()", colNames)"
3. Not including variables for "meanFreq(), giving 68 variables: run the R Code w/o changes
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Experiment Description: the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, the experiment captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

It have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
-	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
-	Triaxial Angular velocity from the gyroscope. 
-	A 561-feature vector with time and frequency domain variables.
-	Its activity label.
-	An identifier of the subject who carried out the experiment.

The dataset includes the following files:
-	'README.txt'
-	'features_info.txt': Shows information about the variables used on the feature vector.
-	'features.txt': List of all features
-	'activity_labels.txt': Links the class labels with their activity name.
-	'train/X_train.txt': Training set.
-	'train/y_train.txt': Training labels.
-	'test/X_test.txt': Test set.
-	'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
-	'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
-	'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
-	'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
-	'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Project Description

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

Original Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

R script called run_analysis.R that does the following:
-	Merges the training and the test sets to create one data set.
-	Extracts only the measurements on the mean and standard deviation for each measurement. 
-	Uses descriptive activity names to name the activities in the data set
-	Appropriately labels the data set with descriptive activity names. 
-	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Repository Content:
-	CodeBook.md: information about raw and tidy data set and elaboration made to transform them
-	LICENSE: license terms for text and code
-	README.md: this file
-	run_analysis.R: R script to transform raw data set
-	Tidy Data File: sensor_avg_by_act_sub.txt
