---
title: "Read me"
author: "Paul"
date: "22/08/2014"
output: html_document
---

The script to produce tidy data for the project for Getting & Cleaning Data is
run_analysis.R. It carries out the project instructions as follows. (The code 
assumes that all data files are available in the current working directory.)

The STEP numbering used below corresponds to the five numbered instructions in 
the Project description and links to comments in the script labelled "STEP".

This file should be read in conjuction with the commented code in run_analysis.R
and, where necessary, with the information on the original data set to be found
at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

**STEP 1. Merges the training and the test sets to create one data set.**

Reads in the two features data files: _X\_train.txt_ & _X\_test.txt_ and merges
them into a single dataframe (_alldat_)

**STEP 2. Extracts only the measurements on the mean and standard deviation for 
each measurement. Also, appropriately labels the variables with descriptive 
variable names (i.e.STEP 4).**

1. Reads in _features.txt_ to identify the columns containing means & stds
2. Creates a logical vector, determining which columns of alldat will contain 
"mean()" or "std()" by searching for these strings using `grepl()`. (Note: 
assuming other variables with "mean" in their name are not required.)
3. Extracts the required columns by subsetting using the vector from 2 above and
the `[` operator.
4. Finally, names the variable columns using the labels from _features.txt_. 
These already contain descriptive info about the variables as described in 
_features\_info.txt_ from the URL above.

We now have a data frame (_wanted\_data_) containing the required variables 
appropriately labelled.

**STEP 3. Uses descriptive activity names to name the activities in the data set,
then merges the subject and activity identifiers with the variables data frame.**

1. Reads in and merges the subject id numbers and activity numbers for the 
training and test sets.
2. Replaces the activity names with descriptive labels.
3. Merges subjects and activities with variables and writes the first tidy data
frame to a space-separated file as _tidy.txt_.

**STEP 5. Creates a second, independent tidy data set with the average of each 
variable for each activity and each subject.**
Uses `aggregate()` to calculate the mean values of all variables grouped by 
Subject and Activity and writes the resulting 180 row (6x18) dataframe to file 
as _tidy2.txt_

