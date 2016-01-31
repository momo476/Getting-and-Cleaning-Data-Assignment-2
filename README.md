==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The code used to extract and summarize the data from the dataset above can be found in:
run_analysis.R - This script imports data from the following dataset and utilizes the dplyr library.

A description of the data and the variables can be found in:
CodeBook.md

Tidy dataset files can be found in:
TestAndTrainingMeansAndStDev.txt
SubjectActivitySummary.txt

The first tidy dataset TestAndTrainingMeansAndStDev.txt is created through the following steps found in run_analysis.R

* The script reads in the text files containing both the training and the test data.
* Activities and subject information is merged into each dataset independently along with column headers.
* The training data is appended to the test data creating a single data file, where the column names are updated to be more easily read.
* Using the combined dataset, a new dataset is creating containing only mean and standard deviation information.
* Save dataset to TestAndTrainingMeansAndStDev.txt

The second tidy dataset SubjectActivitySummary.txt is created using the first tidy dataset through the following steps found in run_analysis.R

* Update the column head names to include avg (average)
* The data is grouped by activity and subject
* Creates a summarized data set containing the average of each variable for each activity and each subject
* Save dataset to SubjectActivitySummary.txt


Notes: 
======
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.