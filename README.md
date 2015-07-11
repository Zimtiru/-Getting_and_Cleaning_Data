<h4> Getting and Cleaning Data course project</h4>

Downlad the data for the project from  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

setwd("/Users/anteneh/Documents/COURSERA/Gettingandcleaningdata/Project_trial/data/UCI HAR Dataset")

filedownloaded <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(filedownloaded,destfile="Dataset.zip",method="curl")

unzip(zipfile="Dataset.zip")

In RStudio we use the sourse ("Analysis.R") to get our out put.
