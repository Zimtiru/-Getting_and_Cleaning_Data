library(plyr);
# Q.1. Merges the training and the test sets to create one data set.##########

#Read the Fearures files
XTrain<- read.table("train/X_train.txt", header = FALSE)
XTest <- read.table("test/X_test.txt", header = FALSE)

#Read the Subject files
SubTrain<- read.table("train/subject_train.txt", header = FALSE)
SubTest <- read.table("test/subject_test.txt",header = FALSE)

#Read the activity files
YTrain<- read.table("train/y_train.txt",header = FALSE)
YTest <- read.table("test/y_test.txt",header = FALSE)

#Concatenate the tables by rows
XTrTe <- rbind(XTrain, XTest)
Subj <- rbind(SubTrain, SubTest)
YTrTe <- rbind(XTrain, XTest)

# Set the names Subj and YtrTe to subject and activity, respectively.
names(Subj)<-c("subject")
names(YTrTe)<- c("activity")
XTrTeNames <- read.table("features.txt",head=FALSE)
names(XTrTe)<- XTrTeNames$V2

#Merge columns to get the data frame Data for all data

CombinebyCol <- cbind(Subj, YTrTe)
Data <- cbind(XTrTe, CombinebyCol)

# Q.2. Extracts only the measurements on the mean and standard deviation for each measurement.

subdataXTrTeNames<-XTrTeNames$V2[grep("mean\\(\\)|std\\(\\)", XTrTeNames$V2)]
selectedNames<-c(as.character(subdataXTrTeNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

# 3. Uses descriptive activity names to name the activities in the data set.

activityLabels <- read.table("activity_labels.txt",header = FALSE)

#4. Appropriately labels the data set with descriptive variable names. 
# Check the names using "names(Data)" command before(labelled by descriptive names) and after
#(descriptive variables names) the following code
# prefix t is replaced by time
#Acc is replaced by Accelerometer
#Gyro is replaced by Gyroscope
#prefix f is replaced by frequency
#Mag is replaced by Magnitude
#BodyBody is replaced by Body

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Aggregate_Data<-aggregate(. ~subject + activity, Data, mean)
Aggregate_Data<-Aggregate_Data[order(Data2$subject,Data2$activity),]
write.table(Aggregate_Data, file = "tidydata.txt",row.name=FALSE)
