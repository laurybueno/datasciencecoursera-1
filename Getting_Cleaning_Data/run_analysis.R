#-------------------------------------------------------------------------------
# On this R Code, The final data set (sensor_avg_by_act_sub) can include or not 
# the variables for meanFreq.
# For 81 variables: on mark [1] put on line "# != grepl("meanFreq()", colNames)"
# the symbol "#"
# For 68 variables: run this R Code w/o changes
#-------------------------------------------------------------------------------

# Set the working directory
path.expand("~")
setwd("~/Data_Analysis/Coursera/Getting_Cleaning_Data/Course_Project")
        
# Clean Up Workspace
rm(list = ls())
        
# Call required libraries
library("data.table")
library(plyr)
        
# Define DataSet File
file <- "test.dat"
        
# Get Temporary Directory
tmpdir <- tempdir()
        
# Unzip the file into the dir
unzip("test.zip", exdir = tmpdir)
unzip("train.zip", exdir = tmpdir)
        
# Get / Define path & name of the unzipped
feature_name <- "features.txt"
activity_label_name <- "activity_labels.txt"
x_train_name <- paste(tmpdir, "X_train.txt", sep = "\\")
y_train_name <- paste(tmpdir, "y_train.txt", sep = "\\")
subject_train_name <- paste(tmpdir, "subject_train.txt", sep = "\\")
x_test_name <- paste(tmpdir, "X_test.txt", sep = "\\")
y_test_name <- paste(tmpdir, "y_test.txt", sep = "\\")
subject_test_name <- paste(tmpdir, "subject_test.txt", sep = "\\")
        
# Read zipfiles and creates DT (data table)
features <- read.table(feature_name, header = FALSE)
activity <- read.table(activity_label_name, header = FALSE)
x_train <- read.table(x_train_name, header = FALSE)
y_train <- read.table(y_train_name, header = FALSE)
subject_train<- read.table(subject_train_name, header = FALSE)
x_test <- read.table(x_test_name, header = FALSE)
y_test<- read.table(y_test_name, header = FALSE)
subject_test<- read.table(subject_test_name, header = FALSE)
        
# Merges Train Data - Column Names
colnames(activity) <- c("activityId", "activity")
colnames(subject_train) <- "subject"; 
colnames(x_train) <- features[ ,2]
colnames(y_train) <- "activityid"
        
train_data <- cbind(x_train, subject_train, y_train)
        
# Merges Test Data - Column Names
colnames(activity) <- c("activityId", "activity")
colnames(subject_test) <- "subject"; 
colnames(x_test) <- features[ ,2]
colnames(y_test) <- "activityid"
        
test_data<- cbind(x_test, subject_test, y_test)
        
# Merges Train - Test Data
DT <- rbind(test_data, train_data)
        
# Define DT as Data Table
DT <- as.data.table(DT)
        
# Search y_test field & insert Activity Labels, where:
# 1 = "WALKING" ; 2 = "WALKING_UPSTAIR" ; 3 = "WALKING_DOWNSTAIRS"
# 4 ="SITTING" ; 5 ="STANDING" ; 6 = "LAYING"
for (i in 1:6) {
        activity_label <- activity[i, 2]
        DT[activityid == i, activity := activity_label]
}
        
# Create vector for the column names (later will be used to select the desired 
# mean() & stddev() columns 
DT$activityid <- NULL           # Deletes activityid column
colNames <- colnames(DT)

# [1]
# Create vector with the column names for mean() & stddev() columns only
colNames <- (colNames[(grepl("mean()",colNames)
                       != grepl("meanFreq()", colNames)
                       | grepl("std()",colNames) 
                       | grepl("subject",colNames) 
                       | grepl("activity",colNames)) == TRUE])
# [2]

# Create the Data Table with the required columns
DT1 <- DT[ , colNames, with = FALSE]    # Data Set Step 4 - README.MD
colNames <- colnames(DT1)
        
# Creates Tidy Data Set for the average of each variable for each activity 
# and each subject from data set DT1
sensor_avg_by_act_sub <- ddply(DT1, c("subject","activity"), 
                                          numcolwise(mean))
        
# Change Column Names on final Tidy Data Set
colNames <- colnames(sensor_avg_by_act_sub)
        
for (i in 3:length(colNames)) {
        colNames[i] <- paste("avg", colNames[i], sep = "-")
}
        
setnames(sensor_avg_by_act_sub, colNames)
        
# Write Data - Table
write.table(sensor_avg_by_act_sub, "./sensor_avg_by_act_sub.txt", 
            row.names = FALSE , sep = "\t")
        
