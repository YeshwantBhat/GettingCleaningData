GettingCleaningData
===================

CodeBook for the project.


### Tidy Data Description 

The tidy data is output in the file "output.txt"

It consists of 68 variables :-

1.subject

2.activity

3.features described below.



### subject Description
SUBJECT    
2

Group of volunteers within an age bracket of 19-48 years.

01..30

The subject variable has been obtained by combining it from the training and test data.
The test data has information for  9 volunteers.
The training data has information for 21 volunteers.

### activity Description
ACTIVITY

1

List of activities performed by the subject wearing a smartphone (Samsung Galaxy S II) on the waist.

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING


The activity variable has been transformed from integer numbers (1 to 6) to factors(labels).
activity_labels.txt provided the necessary mapping between the numbers and the labels.

Each subject has performed the activities at different interval of times.

### Description about the various features.


List of measurements extracted and transformed from the set of 561 measurements.

The raw signals were captured using the embedded accelerometer and gyroscope.3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.

The signals were then pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50 % overlap. This resulted in a 128 vector data. 

The 128 vector data for instance tAcc-XYZ and tGyro-XYZ were captured at a constant rate of 50 Hz.The acceleration data was then seperated into body acceleration and gravity using a Butterworth low-pass filter.This resulted in tBodyAcc-XYZ and tGravityAcc-XYZ.

The Jerk signals were then computed from tBodyAcc-XYZ and tGyro-XYZ in time to obtain tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ.

Magnitude of these three-dimensional signals were calculated using the Euclidean norm thus resulting in 

tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag

Fast Fourier Transform(FFT) was applied on some of the signals in frequency domain to obtain the following 

fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag

From the above set of time, frequency, acceleration,angular,jerk, magnitude signals a 561 vector measurements was computed.
These 561 measurements were the different calculations done on the above set. The calculations were mean, std and so on ...

The measurements are normalized in the range [-1,1].



So for instance tBodyAcc-mean()-X denotes the mean value for the Body acceleration in X-Axis for a particular subject and a particular activity, i.e. subject 1 and for a WALKING Activity.

From these set of 561 measurements only those measurements were taken for which either mean or std (standard deviation) are available. 

For instance tBodyAcc-mean()-X was retained.However  tBodyAcc-mad()-X was excluded.

This resulted in the set of 66 measurements

Finally the average of the measurements for a particular subject, activity combination was computed.


Mean of the particular measurement values for a given combination of subject and activity.

Individual  values for a particular measurement have been added for a particular combination of subject,activity
and then the average calculated.


For instance tBodyAcc-mean()-X - There are let us say 7 values for subject 1 and activity WALKING.

These 7 values are averaged out to get the mean value for the combination of subject 1 and activity WALKING.

This was repeated for all such measurements (66 in total) for all combinations of subject, activity.

In the below set of measurements following are appicable :-

Measurements beginning with t represent the measurements in time domain.

Measurements beginning with f represent the measurements in frequency domain.

All the measurements represent the mean value of a particular measurement for a particular combination of subject,activity.

It is assumed that measurements corresponding to 61-66 in the set below mean the same corresponding to the measurements in the set 35-40 except that they represent the frequency domain whereas the set 35-40 represent the time domain.

For instance measurement corresponding to 61 i.e. fBodyBodyAccJerkMagmean means the same corresponding to the measurement corresponding to 35 tBodyAccJerkMagmean.
fBodyBodyAccJerkMagmean represents the frequency domain whereas tBodyAccJerkMagmean represents the time domain.


std - Standard Deviation used in the features description below.

All the mean values are numbers.


tBodyAccmeanX  - Mean of Body acceleration in X-Axis and time domain.

tBodyAccmeanY  - Mean of Body acceleration in Y-Axis and time domain.

tBodyAccmeanZ  - Mean of Body acceleration in Z-Axis and time domain.

tBodyAccstdX   - Mean of  std of Body acceleration in X-Axis and time domain.

tBodyAccstdY   - Mean of  std of Body acceleration in Y-Axis and time domain.

tBodyAccstdZ   - Mean of  std of Body acceleration in Z-Axis and time domain.

tGravityAccmeanX - Mean of Gravity acceleration  in X-Axis and time domain.

tGravityAccmeanY - Mean of Gravity acceleration  in Y-Axis and time domain.

tGravityAccmeanZ - Mean of Gravity acceleration  in Z-Axis and time domain.

tGravityAccstdX  - Mean of std of Gravity acceleration  in X-Axis and time domain.

tGravityAccstdY  - Mean of std of Gravity acceleration  in Y-Axis and time domain.

tGravityAccstdZ -  Mean of std of Gravity acceleration  in Z-Axis and time domain.

tBodyAccJerkmeanX - Mean of Body acceleration  jerk  in X-Axis and time domain.

tBodyAccJerkmeanY - Mean of Body  acceleration jerk  in Y-Axis and time domain.

tBodyAccJerkmeanZ - Mean of Body  acceleration jerk  in Z-Axis and time domain.

tBodyAccJerkstdX  - Mean of std of Body  acceleration jerk  in X-Axis and time domain.

tBodyAccJerkstdY  - Mean of std of Body  acceleration jerk  in Y-Axis and time domain.

tBodyAccJerkstdZ  - Mean of std of Body  acceleration jerk  in Z-Axis and time domain.

tBodyGyromeanX    - Mean of Body angular velocity in X-Axis and time domain.

tBodyGyromeanY    - Mean of Body angular velocity in Y-Axis and time domain.  

tBodyGyromeanZ    - Mean of Body angular velocity in Z-Axis and time domain.

tBodyGyrostdX     - Mean of std of Body angular velocity in X-Axis and time domain.

tBodyGyrostdY     - Mean of std of Body angular velocity in Y-Axis and time domain.  

tBodyGyrostdZ     - Mean of std of Body angular velocity in Z-Axis and time domain.

tBodyGyroJerkmeanX - Mean of Body jerk in X-Axis and time domain.

tBodyGyroJerkmeanY - Mean of Body jerk in Y-Axis and time domain.

tBodyGyroJerkmeanZ - Mean of Body jerk in Z-Axis and time domain.

tBodyGyroJerkstdX  - Mean of std of Body jerk in X-Axis and time domain.

tBodyGyroJerkstdY  - Mean of std of Body jerk in Y-Axis and time domain.

tBodyGyroJerkstdZ  - Mean of std of Body jerk in Z-Axis and time domain.

tBodyAccMagmean    - Mean of Body acceleration Euclidean norm in time domain.

tBodyAccMagstd     - Mean of std of Body acceleration Euclidean norm in time domain.

tGravityAccMagmean - Mean of Gravity acceleration Euclidean norm in time domain. 

tGravityAccMagstd  - Mean of std of Gravity acceleration Euclidean norm in time domain.

tBodyAccJerkMagmean - Mean of Body acceleration jerk Euclidean norm in time domain.

tBodyAccJerkMagstd  - Mean of std of Body acceleration jerk Euclidean norm in time domain.

tBodyGyroMagmean    - Mean of Body angular velocity Euclidean norm in time domain.

tBodyGyroMagstd     - Mean of std of Body angular velocity Euclidean norm in time domain.

tBodyGyroJerkMagmean - Mean of Body jerk Euclidean norm in time domain.

tBodyGyroJerkMagstd  - Mean of std of Body jerk Euclidean norm in time domain.

fBodyAccmeanX        - Mean of Body acceleration in X-Axis and frequency domain.

fBodyAccmeanY        - Mean of Body acceleration in Y-Axis and frequency domain.

fBodyAccmeanZ        - Mean of Body acceleration in Z-Axis and frequency domain.

fBodyAccstdX         - Mean of std of Body acceleration in X-Axis and frequency domain.

fBodyAccstdY         - Mean of std of Body acceleration in Y-Axis and frequency domain.

fBodyAccstdZ         - Mean of Body acceleration in Z-Axis and frequency domain.

fBodyAccJerkmeanX    - Mean of Body acceleration  jerk  in X-Axis and frequency domain.

fBodyAccJerkmeanY    - Mean of Body acceleration  jerk  in Y-Axis and frequency domain.

fBodyAccJerkmeanZ    - Mean of Body acceleration  jerk  in Z-Axis and frequency domain.

fBodyAccJerkstdX     - Mean of std of Body acceleration  jerk  in X-Axis and frequency domain.

fBodyAccJerkstdY     - Mean of std of Body acceleration  jerk  in Y-Axis and frequency domain.

fBodyAccJerkstdZ     - Mean of std of Body acceleration  jerk  in Z-Axis and frequency domain.

fBodyGyromeanX       - Mean of Body angular velocity in X-Axis and frequency domain.

fBodyGyromeanY       - Mean of Body angular velocity in Y-Axis and frequency domain. 

fBodyGyromeanZ       - Mean of Body angular velocity in Z-Axis and frequency domain.

fBodyGyrostdX        - Mean of std of Body angular velocity in X-Axis and frequency domain.

fBodyGyrostdY        - Mean of std of Body angular velocity in Y-Axis and frequency domain.

fBodyGyrostdZ        - Mean of std of Body angular velocity in Z-Axis and frequency domain.

fBodyAccMagmean      - Mean of Body acceleration Euclidean norm in frequency domain. 

fBodyAccMagstd       - Mean of std of Body acceleration Euclidean norm in frequency domain. 

fBodyBodyAccJerkMagmean - Mean of Body acceleration jerk Euclidean norm in frequency domain.

fBodyBodyAccJerkMagstd  - Mean of std of Body acceleration jerk Euclidean norm in frequency domain.

fBodyBodyGyroMagmean    - Mean of Body angular velocity Euclidean norm in frequency domain.

fBodyBodyGyroMagstd     - Mean of std of Body angular velocity Euclidean norm in frequency domain.

fBodyBodyGyroJerkMagmean - Mean of Body jerk Euclidean norm in frequency domain.

fBodyBodyGyroJerkMagstd  - Mean of std of Body jerk Euclidean norm in frequency domain.


