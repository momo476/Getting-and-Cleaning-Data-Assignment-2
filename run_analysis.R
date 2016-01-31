## This script imports data for --------  
## It creates a tidy data set combing data from training and testing data files

## !!!! Note to self:  May want to reorder to the order in the instructions !!!!!
## Read.Table is smart enough to unzip the files 
## filename
## download file if does not exist
## read in file

library(dplyr)

## Include code for downloading and unzipping data here then change working directory
setwd("./UCI HAR Dataset/")

## Reads in features table used for column headersco
features <- read.table("./features.txt", header = FALSE)
colHeaders <- features[,2]  ## assigns header names
activityLabels <- read.table("./activity_labels.txt", header = FALSE, col.names = c("activityId","activity"))

#################################################
##Create complete training dataset
#################################################

## Reads in training data
xTraining <- read.table("./train/X_train.txt", header = FALSE, col.names = colHeaders )

subTrain <- read.table("./train/subject_train.txt", header = FALSE, col.names = "subject")
y_train <- read.table("./train/y_train.txt", header = FALSE, col.names = "activityId")
ytrainlbs <- merge(y_train, activityLabels, by = "activityId")

## Completes training dataset by merging all datasets into one
trainingData <- xTraining
trainingData$subject <- as.numeric(subTrain[,])
trainingData$activity <- as.character(ytrainlbs[,2])


#################################################
##Create complete testing dataset
#################################################

xtesting <- read.table("./test/X_test.txt", header = FALSE, col.names = colHeaders )
subtest <- read.table("./test/subject_test.txt", header = FALSE, col.names = "subject")

y_test <- read.table("./test/y_test.txt", header = FALSE, col.names = "activityId")
ytestlbs <- merge(y_test, activityLabels, by = "activityId")

## Completes testing dataset by merging all datasets into one
testingData <- xtesting
testingData$subject <- as.numeric(subtest[,])
testingData$activity <- as.character(ytestlbs[,2])

################################################################################################
##Creates the final dataset, combining training and testing data and saves this to a text file
################################################################################################

formalData <- rbind(trainingData,testingData)

##Extracts all columns with means or standard deviations
TestAndTrainingMeansAndStDevCols <- grep("mean[[:punct:]]|std[[:punct:]]", names(formalData))
TestAndTrainingMeansAndStDev <- formalData[,c(MeanAndStDevCols,562:563)]

## Cleans up column names and updates t to time and f to freq to make more readable
colnames(TestAndTrainingMeansAndStDev) <- sub("\\.\\.","",names(TestAndTrainingMeansAndStDev))  ##Removes extra periods
colnames(TestAndTrainingMeansAndStDev) <- sub("^t","time",names(TestAndTrainingMeansAndStDev))
colnames(TestAndTrainingMeansAndStDev) <- sub("^f","freq",names(TestAndTrainingMeansAndStDev))

#This may take a few seconds to write the table to a text file
write.table(TestAndTrainingMeansAndStDev, "./TestAndTrainingMeansAndStDev.txt", sep="\t", row.names = FALSE, append = FALSE, quote = FALSE)


## Updates column head names
avgActivity <- TestAndTrainingMeansAndStDev
colnames(avgActivity) <-  c(sub("$",".avg",names(avgActivity[,1:66])),"subject","activity")

## Groups data by activity and subject
avgActivity <- group_by(avgActivity, activity, subject)

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
SubjectActivitySummary <-  summarise_each(avgActivity, funs(mean(., na.rm=TRUE)))

#Saves summarized dataset with means and standard deviations only to a file
write.table(SubjectActivitySummary, "./SubjectActivitySummary.txt", sep="\t", row.names = FALSE, append = FALSE, quote = FALSE)


