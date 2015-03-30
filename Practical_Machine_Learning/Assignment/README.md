README:

Experiment Description: 

The Human Activity Recognition Research has been focused on discriminating between different activities like sitting, standing, walking and weight lifting, to predict "which" activity was performed at a specific point in time.

For the **Weight Lifting Exercises Data Set** is to investigate "how well" this  activity was performed by the wearer, of 6 healthy male participants, aged between 20-28 years (adelmo, carlitos, charles, eurico, jeremy, pedro), by using a relatively light dumbbell (1.25kg).

For data recording, four 9 degrees of freedom Razor inertial measurement units (IMU), which provide three-axes acceleration, gyroscope and magnetometer data at a joint sampling rate of 45 Hz were used.

The sensors were mounted in the user's forearm, arm, lumbar belt and dumbbell and the data were recorded between November and December 2011 (11.28 to 12.05).

The reading for each sensor are: position (roll, pitch, yaw), acceleration (3 axis: x, y, z), gyroscope (3 axis: x, y, z) and magnetometer (3 axis: x, y, z).

The participants were asked to perform one set of 10 repetitions of the Unilateral Dumbbell Biceps Curl in five different fashions:

- Class A: exactly according with the specification.
- Class B: throwing the elbows to the front.
- Class C: lifting the dumbbell only halfway.
- Class D: lowering the dumbbell only halfway.
- Class E throwing the hips to the front.

Class A corresponds to the correct execution of the exercise, while the other 4 classes correspond to common mistakes. 

For feature extraction it was used a sliding window approach with different lengths from 0.5 second to 2.5 seconds, with 0.5 second overlap.

Read more: http://groupware.les.inf.puc-rio.br/har#ixzz3RR4j8dvi

Project Description:

plm_training Data Set: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

plm_testing Data Set: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv 

The data for this project come from this source: http://groupware.les.inf.puc-rio.br/har . 

R Markdown script called Assignment_PML_V03.Rmd that does the following:
- Exploratory Analysis from plm_training / plm_testing data sets
- Clean the plm_training data set, to a tidy_dataset (tidy_dataset.csv)
- Clean the plm_testing data set, to a validation_dataset (validation_dataset.csv)
- Using the tidy_dataset, creates the training and testing partition for model fitting
- Modelling - training data set:
a. LVQ Model:		Learning Vector Quantification
					Use: Classification
					Tuning Parameters: size, k
                        
b. GBM Model:		Stochastic Gradient Boosting
                    Use: Dual (Regression - Classification)
                    Tuning Parameters: n.trees, interaction.depth, shrinkage

c. SVM Model:	    Support Vector Machines
                    Dual Use (Regression - Classification)
                    Tuning Parameters: sigma, C

d. RF Model: 	    Random Forest
                    Dual Use (Regression - Classification)
                    Tuning Parameters: mtry
- Selecting best fitting model
- Cross Checking the model selection, due to running the best model on the testing data set. 
- Statistical Inference: aprox. standard normal behaviour of the best model
- Predict the class (A, B, C, D, E) fro the validation data set

Repository Content:

- CodeBook.md: information about raw and tidy data set and elaboration made to transform them

- LICENSE: license terms for text and code

- README.md: this file

- data Folder: with the following files:
a. modelGbm.RData
b. modelLvq.RData
c. modelRf.RData
d. modelSmv.RData
e. pml-training.zip: original plm-training data set
f. pml-testing.zip: original plm-testing data set
g. tidy_dataset.csv: tidy data set
h. validation_dataset.csv: validation data set
i. training.csv: training data set
j. testing.csv: testing data set

- docs Folder: research file 2013.Velloso.QAR-WLE.pdf

- graphs Folder: generated figures and on-body-sensing-schema[1].png (showing sensor position)

- reports Folder: with file answers.csv (answers for the validation data set)