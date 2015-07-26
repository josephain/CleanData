# CleanData
Coursera Cleaning Data Course
The Script performs the following actions
*Downloads the ZIP package
*Loads PLYR library. It assumes PLYR has already been installed
*Reads the ZIP file by file using getFile function
* The function crData is used to create data sets for both Train and Test data
*These are bound into one data set, processed, and saved
Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are:

mean: Mean value

std: Standard deviation
Transformation

All Column Names holding measurments have _mean attached to them

All the values are means, aggregated over 30 subjects and 6 activities. 
The id column is the Activity Id translated in the Activity Field.

Complete set of colums is attached

id
activity	
tBodyAcc.std...X_mean	
tBodyAcc.std...Y_mean	
tBodyAcc.std...Z_mean	
tGravityAcc.std...X_mean	
tGravityAcc.std...Y_mean	
tGravityAcc.std...Z_mean	
tBodyAccJerk.std...X_mean	
tBodyAccJerk.std...Y_mean	
tBodyAccJerk.std...Z_mean	
tBodyGyro.std...X_mean	
tBodyGyro.std...Y_mean	
tBodyGyro.std...Z_mean	
tBodyGyroJerk.std...X_mean	
tBodyGyroJerk.std...Y_mean	
tBodyGyroJerk.std...Z_mean	
tBodyAccMag.std.._mean	
tGravityAccMag.std.._mean	
tBodyAccJerkMag.std.._mean	
tBodyGyroMag.std.._mean	
tBodyGyroJerkMag.std.._mean	
fBodyAcc.std...X_mean	
fBodyAcc.std...Y_mean	
fBodyAcc.std...Z_mean	
fBodyAccJerk.std...X_mean	
fBodyAccJerk.std...Y_mean	
fBodyAccJerk.std...Z_mean	
fBodyGyro.std...X_mean	
fBodyGyro.std...Y_mean	
fBodyGyro.std...Z_mean	
fBodyAccMag.std.._mean	
fBodyBodyAccJerkMag.std.._mean	
fBodyBodyGyroMag.std.._mean	
fBodyBodyGyroJerkMag.std.._mean	
tBodyAcc.mean...X_mean	
tBodyAcc.mean...Y_mean	
tBodyAcc.mean...Z_mean	
tGravityAcc.mean...X_mean	
tGravityAcc.mean...Y_mean	
tGravityAcc.mean...Z_mean	
tBodyAccJerk.mean...X_mean	
tBodyAccJerk.mean...Y_mean	
tBodyAccJerk.mean...Z_mean	
tBodyGyro.mean...X_mean	
tBodyGyro.mean...Y_mean	
tBodyGyro.mean...Z_mean	
tBodyGyroJerk.mean...X_mean	
tBodyGyroJerk.mean...Y_mean	
tBodyGyroJerk.mean...Z_mean	
tBodyAccMag.mean.._mean	
tGravityAccMag.mean.._mean	
tBodyAccJerkMag.mean.._mean	
tBodyGyroMag.mean.._mean	
tBodyGyroJerkMag.mean.._mean	
fBodyAcc.mean...X_mean	
fBodyAcc.mean...Y_mean
fBodyAcc.mean...Z_mean
fBodyAcc.meanFreq...X_mean	
fBodyAcc.meanFreq...Y_mean
fBodyAcc.meanFreq...Z_mean	
fBodyAccJerk.mean...X_mean	
fBodyAccJerk.mean...Y_mean	
fBodyAccJerk.mean...Z_mean	
fBodyAccJerk.meanFreq...X_mean	
fBodyAccJerk.meanFreq...Y_mean	
fBodyAccJerk.meanFreq...Z_mean	
fBodyGyro.mean...X_mean	
fBodyGyro.mean...Y_mean	
fBodyGyro.mean...Z_mean	
fBodyGyro.meanFreq...X_mean	
fBodyGyro.meanFreq...Y_mean	
fBodyGyro.meanFreq...Z_mean	
fBodyAccMag.mean.._mean	
fBodyAccMag.meanFreq.._mean	
fBodyBodyAccJerkMag.mean.._mean	
fBodyBodyAccJerkMag.meanFreq.._mean	
fBodyBodyGyroMag.mean.._mean	
fBodyBodyGyroMag.meanFreq.._mean
fBodyBodyGyroJerkMag.mean.._mean
fBodyBodyGyroJerkMag.meanFreq.._mean
