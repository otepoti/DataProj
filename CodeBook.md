---
title: "CodeBook"
author: "Paul"
date: "22/08/2014"
output: html_document
---

This is the code book for the data set "tidy2.txt" produced by Paul King as part
of the course project for Getting & Cleaning Data .

tidy2.txt consists of average values of means and standard deviations for a 
number of variables measured on 30 subjects performing 6 different activities. 
Further details of the original data can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data contained more than one observation of all the variables for 
each subject/activity combination. tidy2.txt contains the average of each 
variable grouped by subject/activity.

The first two columns identify the group of observations over which an average 
has been taken. These are identified by the subject number (labelled "Subject") 
which is an integer in the range (1,30), and the activity description (labelled 
"Activity") which is one of the six activities 
{"standing", "sitting", "walking", "laying", "walking upstairs",
walking downstairs"}.

The remaining columns contain the averages of the mean and standard deviation of 
variables described by the labels listed below, where mean values are denoted by
"mean()" in the column name and standard deviations are denoted by "std()". 
Column names ending in X, Y, or Z denote variable components measured along the 
corresponding axis.

Note: no transformations other than averaging by `mean()` were applied to any of
the variables: their values and units are the same as in the original data. The 
original data were split into "test" and "train" data sets which were merged to 
produce _tidy.txt_ (the file containing the data frame of variables prior to 
averaging). The originals also contained more features derived from the raw 
measurements: these were excluded from _tidy.txt_.

Columns including the subject identifier and activity name, taken from
separate files in the original data set, were added to the table of variable data. 

List of variable labels:

tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std() 
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  