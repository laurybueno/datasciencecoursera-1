CODE BOOK

Created: 21-Feb-2.015
Version: 01

- Original Data Set:
- Name: WLE Dataset (WearableComputing_weight_lifting_exercises_biceps_curl_variations)
- This dataset is licensed under the Creative Commons license (CC BY-SA). The CC BY-SA license means you can remix, tweak, and build upon this work even for commercial purposes, as long as you credit the authors of the original work and you license your new creations under the identical terms we are licensing to you. This license is often compared to "copyleft" free and open source software licenses. All new works based on this dataset will carry the same license, so any derivatives will also allow commercial use. 

Acknowledgement: see LICENCE.md

- Assignment Data Set:
a. plm-training Raw Set: 19622 observations - 160 variables (https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv)
b. plm-testing Raw Set: 20 observations - 160 variables (https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv)

For each observation it is provided:
- Sensors: mounted in the user's forearm, arm, lumbar belt and dumbbell
- Dates: the data were recorded between November and December 2011 (11.28 to 12.05).

Readings for each sensor are: 
- position (roll, pitch, yaw)
- Triaxial acceleration from the accelerometer (x, y, z)
- Triaxial Angular Velocity from the gyroscope (x, y, z)
- Triaxial  Magnetic Field (x, y, z)
- Class("classe") label: 
a. Class A: exactly according with the specification.
b. Class B: throwing the elbows to the front.
c. Class C: lifting the dumbbell only halfway.
d. Class D: lowering the dumbbell only halfway.
f. Class E throwing the hips to the front.

Data Cleaning: the raw data sets were processed with R script doing:

1.	Deleting not required Columns, defined after an exploratory analysis and cleaning data.
"X"
"user_name"
"raw_timestamp_part_1"
"raw_timestamp_part_2"
"cvtd_timestamp"
"new_window"
"num_window"
"total_accel"
"kurtosis": for each sensor
"skewness": for each sensor
"max": for each sensor
"min": for each sensor
"amplitude": for each sensor
"var": for each sensor
"avg": for each sensor
"stddev": for each sensor

2.	From the data set in step 1, creates an independent tidy data set with 19622 observations with 49 variables

Variable (Variable Number / Name / Description / Remarks):
- 01: classe / 5 fashions from the unilateral Dumbbell Biceps Curl (A to E) / Class A: exactly according with the specification - Class B: throwing the elbows to the front - 
Class C: lifting the dumbbell only halfway - Class D: lowering the dumbbell only halfway - Class E throwing the hips to the front.

- 02-14-26-38: roll / belt - arm - dumbbell - forearm / Euler Angle
- 03-15-27-39: pitch / belt - arm - dumbbell - forearm / Euler Angle
- 04-16-28-40: yaw / belt - arm - dumbbell - forearm / Euler Angle
- 05-17-29-41: gyros_belt / gyros_arm / gyros_dumbbell / gyros_forearm / angular velocity / x axe
- 06-18-30-42: gyros_belt / gyros_arm / gyros_dumbbell / gyros_forearm / angular velocity / y axe
- 07-19-31-43: gyros_belt / gyros_arm / gyros_dumbbell / gyros_forearm / angular velocity / z axe
- 08-20-32-44: accel_belt / accel_arm / accel_dumbbell / accel_forearm / acceleration / x axe
- 09-21-33-45: accel_belt / accel_arm / accel_dumbbell / accel_forearm / acceleration / y axe
- 10-22-34-46: accel_belt / accel_arm / accel_dumbbell / accel_forearm / acceleration / z axe
- 11-23-35-47: magnet_belt / magnet_arm / magnet_dumbbell / magnet_forearm / magnetic field / x axe
- 12-24-36-48: magnet_belt / magnet_arm / magnet_dumbbell / magnet_forearm / magnetic field / y axe
- 13-25-37-49: magnet_belt / magnet_arm / magnet_dumbbell / magnet_forearm / magnetic field / z axe


**- Training Set:** 11776 observations - 49 variables (60%)

**- Testing Set:** 7846 observations - 49 variables (40%)
