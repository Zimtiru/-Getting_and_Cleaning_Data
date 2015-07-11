Source of the original data: 

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: 

 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (analysis.R) performs the following to clean up the data:
      
Merges the training and test sets to create one data set: 

  -train/X_train.txt and test/X_test.txt(XTrTe), result in a 10299x561 data frame (10299 instances by  561  Attributes)

  -train/subject_train.txt and test/subject_test.txt(Subj), result in a 10299x1 data frame with subject IDs 

  -train/y_train.txt with test/y_test.txt(YTrTe), result in a 10299x1 data frame with activity IDs.

Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement. 
The result is a 10299x66 data frame, because only 66 out of 561 attributes are measurements on the mean and standard deviation. 
All measurements appear to be floating point numbers in the range (-1, 1).


The script labels the data set with descriptive names and merges the 
10299x66 data frame containing features with 10299x1 data frames containing 
activity labels and subject IDs. The result saved as mergedcleandata.txt, 
a 10299x68 data frame having subject IDs and activity names in the first and 
second column respectively.

Finally, the script creates a new data set called tidy data set with the mean
of each measurement for each activity and subject. Then the output saved as  
tidydata.txt with a data fram of 180x68. The first and the second column contains 
subject IDs and activity names (see below). From 3 to 68(total of 66) columns, the averages were 
taken for each attribute.In general there are 30 subjects, 6 activities and 180 rows with averages in the data set.


