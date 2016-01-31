Two datasets were created using the original data from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
A full description of the original dataset can be found at the website.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 


#### Tidy Data sets
| File Name | Description |
|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| TestAndTrainingMeansAndStDev.txt | Contains mean and standard deviation variables for time and frequency for both the training and the test datasets at the grain of subject and activity. |
| SubjectActivitySummary.txt | Contains the average of each variable for each activity and each subject. |


### TestAndTrainingMeansAndStDev.txt Variables
Each variable is summarized in sets of mean (Mean Value) and std (Standard deviation) for each Subject and Activity Label

| Variable Name | Signal Directions |
| timeBodyAcc | XYZ |
| timeGravityAcc | XYZ |
| timeBodyAccJerk | XYZ |
| timeBodyGyro | XYZ |
| timeBodyGyroJerk | XYZ |
| freqBodyAcc | XYZ |
| freqBodyAccJerk | XYZ |
| freqBodyGyro | XYZ |


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

| Variable Name |
| timeBodyAccMag |
| timeGravityAccMag |
| timeBodyAccJerkMag |
| timeBodyGyroMag |
| timeBodyGyroJerkMag |
| freqBodyAccMag |
| freqBodyBodyAccJerkMag |
| freqBodyBodyGyroMag |
| freqBodyBodyGyroJerkMag |


### SubjectActivitySummary.txt Variables
Each variable is a average for all variables found in TestAndTrainingMeansAndStDev.txt for each Subject and Activity Label

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

### Additional Notes
Activity IDs have been replaced with the descriptive activity name.