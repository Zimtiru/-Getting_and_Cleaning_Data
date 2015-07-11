Source of the original data: 

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: 

 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (analysis.R) performs the following to clean up the data:
      
Merges the training and test sets to create one data set: 
      -train/X_train.txt and test/X_test.txt(XTrTe), result in a 10299x561 data frame (Number of Instances: 10299 and Number of Attributes: 561), )
       
      -train/subject_train.txt and test/subject_test.txt(Subj), result in a 10299x1 data frame with subject IDs 

      -train/y_train.txt with test/y_test.txt(YTrTe), result in a 10299x1 data frame with activity IDs.

Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement. 
The result is a 10299x66 data frame, because only 66 out of 561 attributes are measurements on the mean and standard deviation. 
All measurements appear to be floating point numbers in the range (-1, 1).

Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set:
      
      1 WALKING
      2 WALKING_UPSTAIRS
      3 WALKING_DOWNSTAIRS
      4 SITTING
      5 STANDING
      6 LAYING
