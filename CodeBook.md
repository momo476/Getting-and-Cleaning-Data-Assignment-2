Two datasets were created using the original data from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
A full description of the original dataset can be found at the website.

### Tidy Data sets
| File Name | Description |
|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| TestAndTrainingMeansAndStDev.txt | Contains mean and standard deviation variables for time and frequency for both the training and the test datasets at the grain of subject and activity. |
| SubjectActivitySummary.txt | Contains the average of each variable for each activity and each subject. |


## TestAndTrainingMeansAndStDev.txt Variables
### Each variable is summarized in sets of mean (Mean Value) and std (Standard deviation) for each Subject and Activity Label

| Variable Name | Signal Directions |
| timeBodyAcc | XYZ |
| timeGravityAcc | XYZ |
| timeBodyAccJerk | XYZ |
| timeBodyGyro | XYZ |
| timeBodyGyroJerk | XYZ |
| freqBodyAcc | XYZ |
| freqBodyAccJerk | XYZ |
| freqBodyGyro | XYZ |
| timeBodyAccMag | |
| timeGravityAccMag | |
| timeBodyAccJerkMag | |
| timeBodyGyroMag | |
| timeBodyGyroJerkMag | |
| freqBodyAccMag | |
| freqBodyBodyAccJerkMag | |
| freqBodyBodyGyroMag | |
| freqBodyBodyGyroJerkMag | |


## SubjectActivitySummary.txt Variables
### Each variable is a average for all variables found in TestAndTrainingMeansAndStDev.txt for each Subject and Activity Label

| Variable Name | Signal Directions | Summary Level |
| timeBodyAcc | XYZ | avg (average) |
| timeGravityAcc | XYZ | avg (average) |
| timeBodyAccJerk | XYZ | avg (average) |
| timeBodyGyro | XYZ | avg (average) |
| timeBodyGyroJerk | XYZ | avg (average) |
| freqBodyAcc | XYZ | avg (average) |
| freqBodyAccJerk | XYZ | avg (average) |
| freqBodyGyro | XYZ | avg (average) |
| timeBodyAccMag | | avg (average) |
| timeGravityAccMag | | avg (average) |
| timeBodyAccJerkMag | | avg (average) |
| timeBodyGyroMag | | avg (average) |
| timeBodyGyroJerkMag | | avg (average) |
| freqBodyAccMag | | avg (average) |
| freqBodyBodyAccJerkMag | | avg (average) |
| freqBodyBodyGyroMag | | avg (average) |
| freqBodyBodyGyroJerkMag | | avg (average) |

## Additional Notes
Activity IDs have been replaced with the descriptive activity name.