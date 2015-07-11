#. Downlad the data for the project from  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#   setwd("/Users/anteneh/Documents/COURSERA/Gettingandcleaningdata/Project/CHECKPROJECT/UCI_HAR_Dataset")
#   filedownloaded <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#   download.file(filedownloaded,destfile="Dataset.zip",method="curl")
#   Unzip the files
#    unzip(zipfile="Dataset.zip")
    # Q.1. Merges the training and the test sets to create one data set.
    
    XTrain<- read.table("train/X_train.txt")
    XTest <- read.table("test/X_test.txt")
    XTrTe <- rbind(XTrain, XTest)
    
    SubTrain<- read.table("train/subject_train.txt")
    SubTest <- read.table("test/subject_test.txt")
    Subj <- rbind(SubTrain, SubTest)
    
    YTrain<- read.table("train/y_train.txt")
    YTest <- read.table("test/y_test.txt")
    YTrTe <- rbind(XTrain, XTest)
