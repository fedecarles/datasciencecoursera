* File-Name:      Codebook.md
* Date:           21.12.2014
* Author:         Federico Carlés
* Email:          fedecarles@gmail.com         

## Data set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Variables
 * **Subject** - Number identifier for each volunteer subject [1-30].
 * **Activity** - Categorical variable indicating the acitivty performed by the subject [1-6].

The measurement variables are normalized and bounded within [-1,1]. They are named using the following convention:

 - *t* or *f* , stand for time domain or frequency domain respectively. 
 - *Body* or *Gravity*, stand for body and gravity acceleration signals.
 - *Acc* or *Gyro*, stand for wether the measurement was taken by the accelerometer or by the gyroscope.
 - *Jerk* stand for the jerk signal.
 - *Mag* indicates the magnitude of the three-dimensional signals.
 - *mean()* or *std()*, indicates if the measurement is an average of the means or standard deviation collected for each subject.
 - *X*, *Y* or *Z*, indicates the axis of the measurement.

For example, the variable **tBodyAcc-mean()-X** is the average means meassurements for the body linear acceleration on the X axis over the time domain. The full list of measurement variables is:

* **tBodyAcc-mean()-X**
* **tBodyAcc-mean()-Y**
* **tBodyAcc-mean()-Z**
* **tBodyAcc-std()-X**
* **tBodyAcc-std()-Y**
* **tBodyAcc-std()-Z**
* **tGravityAcc-mean()-X**
* **tGravityAcc-mean()-Y**
* **tGravityAcc-mean()-Z**
* **tGravityAcc-std()-X**
* **tGravityAcc-std()-Y**
* **tGravityAcc-std()-Z**
* **tBodyAccJerk-mean()-X**
* **tBodyAccJerk-mean()-Y**
* **tBodyAccJerk-mean()-Z**
* **tBodyAccJerk-std()-X**
* **tBodyAccJerk-std()-Y**
* **tBodyAccJerk-std()-Z**
* **tBodyGyro-mean()-X**
* **tBodyGyro-mean()-Y**
* **tBodyGyro-mean()-Z**
* **tBodyGyro-std()-X**
* **tBodyGyro-std()-Y**
* **tBodyGyro-std()-Z**
* **tBodyGyroJerk-mean()-X**
* **tBodyGyroJerk-mean()-Y**
* **tBodyGyroJerk-mean()-Z**
* **tBodyGyroJerk-std()-X**
* **tBodyGyroJerk-std()-Y**
* **tBodyGyroJerk-std()-Z**
* **tBodyAccMag-mean()**
* **tBodyAccMag-std()**
* **tGravityAccMag-mean()**
* **tGravityAccMag-std()**
* **tBodyAccJerkMag-mean()**
* **tBodyAccJerkMag-std()**
* **tBodyGyroMag-mean()**
* **tBodyGyroMag-std()**
* **tBodyGyroJerkMag-mean()**
* **tBodyGyroJerkMag-std()**
* **fBodyAcc-mean()-X**
* **fBodyAcc-mean()-Y**
* **fBodyAcc-mean()-Z**
* **fBodyAcc-std()-X**
* **fBodyAcc-std()-Y**
* **fBodyAcc-std()-Z**
* **fBodyAcc-meanFreq()-X**
* **fBodyAcc-meanFreq()-Y**
* **fBodyAcc-meanFreq()-Z**
* **fBodyAccJerk-mean()-X**
* **fBodyAccJerk-mean()-Y**
* **fBodyAccJerk-mean()-Z**
* **fBodyAccJerk-std()-X**
* **fBodyAccJerk-std()-Y**
* **fBodyAccJerk-std()-Z**
* **fBodyAccJerk-meanFreq()-X**
* **fBodyAccJerk-meanFreq()-Y**
* **fBodyAccJerk-meanFreq()-Z**
* **fBodyGyro-mean()-X**
* **fBodyGyro-mean()-Y**
* **fBodyGyro-mean()-Z**
* **fBodyGyro-std()-X**
* **fBodyGyro-std()-Y**
* **fBodyGyro-std()-Z**
* **fBodyGyro-meanFreq()-X**
* **fBodyGyro-meanFreq()-Y**
* **fBodyGyro-meanFreq()-Z**
* **fBodyAccMag-mean()**
* **fBodyAccMag-std()**
* **fBodyAccMag-meanFreq()**
* **fBodyBodyAccJerkMag-mean()**
* **fBodyBodyAccJerkMag-std()**
* **fBodyBodyAccJerkMag-meanFreq()**
* **fBodyBodyGyroMag-mean()**
* **fBodyBodyGyroMag-std()**
* **fBodyBodyGyroMag-meanFreq()**
* **fBodyBodyGyroJerkMag-mean()**
* **fBodyBodyGyroJerkMag-std()**
* **fBodyBodyGyroJerkMag-meanFreq()**

## Source
* Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
* Smartlab - Non Linear Complex Systems Laboratory 
* DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
* activityrecognition '@' smartlab.ws 
* www.smartlab.ws
 