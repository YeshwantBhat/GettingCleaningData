GettingCleaningData
===================

CodeBook for the project.


### Tidy Data Description 

The tidy data is output in the file "output.txt"

It consists of 4 variables :-

1.subject

2.activity

3.measurement

4.mean


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

### measurement Description
MEASUREMENT

2

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

For instance tBodyAcc-mean()-X - There are let us say 7 values for subject 1 and activity WALKING.

These 7 values are averaged out to get the mean value for the combination of subject 1 and activity WALKING.

This was repeated for all such measurements (66 in total) for all combinations of subject, activity.

In the below set of measurements following are appicable :-

Measurements beginning with t represent the measurements in time domain.

Measurements beginning with f represent the mesurements in frequency domain.

All the measurements represent the mean value of a particular measurement for a particular combination of subject,activity.

std - Standard Deviation

01 tBodyAccmeanX  - Mean value of Body acceleration in X-Axis and time domain.

02 tBodyAccmeanY  - Mean value of Body acceleration in Y-Axis and time domain.

03 tBodyAccmeanZ  - Mean value of Body acceleration in Z-Axis and time domain.

04 tBodyAccstdX   - Mean value of  std of Body acceleration in X-Axis and time domain.

05 tBodyAccstdY   - Mean value of  std of Body acceleration in Y-Axis and time domain.

06 tBodyAccstdZ   - Mean value of  std of Body acceleration in Z-Axis and time domain.

07 tGravityAccmeanX - Mean value of Gravity acceleration  in X-Axis and time domain.

08 tGravityAccmeanY - Mean value of Gravity acceleration  in Y-Axis and time domain.

09 tGravityAccmeanZ - Mean value of Gravity acceleration  in Z-Axis and time domain.

10 tGravityAccstdX  - Mean value of std of Gravity acceleration  in X-Axis and time domain.

11 tGravityAccstdY  - Mean value of std of Gravity acceleration  in Y-Axis and time domain.

12 tGravityAccstdZ -  Mean value of std of Gravity acceleration  in Z-Axis and time domain.

13 tBodyAccJerkmeanX - Mean value of Body  acceleration jerk  in X-Axis and time domain.

14 tBodyAccJerkmeanY - Mean value of Body  acceleration jerk  in Y-Axis and time domain.

15 tBodyAccJerkmeanZ - Mean value of Body  acceleration jerk  in Z-Axis and time domain.

16 tBodyAccJerkstdX

17 tBodyAccJerkstdY

18 tBodyAccJerkstdZ

19 tBodyGyromeanX

20 tBodyGyromeanY

21 tBodyGyromeanZ

22 tBodyGyrostdX

23 tBodyGyrostdY

24 tBodyGyrostdZ

25 tBodyGyroJerkmeanX

26 tBodyGyroJerkmeanY

27 tBodyGyroJerkmeanZ

28 tBodyGyroJerkstdX

29 tBodyGyroJerkstdY

30 tBodyGyroJerkstdZ

31 tBodyAccMagmean

32 tBodyAccMagstd

33 tGravityAccMagmean

34 tGravityAccMagstd

35 tBodyAccJerkMagmean

36 tBodyAccJerkMagstd

37 tBodyGyroMagmean

38 tBodyGyroMagstd

39 tBodyGyroJerkMagmean

40 tBodyGyroJerkMagstd

41 fBodyAccmeanX

42 fBodyAccmeanY

43 fBodyAccmeanZ

44 fBodyAccstdX

45 fBodyAccstdY

46 fBodyAccstdZ

47 fBodyAccJerkmeanX

48 fBodyAccJerkmeanY

49 fBodyAccJerkmeanZ

50 fBodyAccJerkstdX

51 fBodyAccJerkstdY

52 fBodyAccJerkstdZ

53 fBodyGyromeanX

54 fBodyGyromeanY

55 fBodyGyromeanZ

56 fBodyGyrostdX

57 fBodyGyrostdY

58 fBodyGyrostdZ

59 fBodyAccMagmean

60 fBodyAccMagstd

61 fBodyBodyAccJerkMagmean

62 fBodyBodyAccJerkMagstd

63 fBodyBodyGyroMagmean

64 fBodyBodyGyroMagstd

65 fBodyBodyGyroJerkMagmean

66 fBodyBodyGyroJerkMagstd










### mean Description

MEAN
17   (16 implied decimal places)

Mean of the particular measurement values for a given combination of subject and activity.

Individual  values for a particular measurement have been added for a particular combination of subject,activity
and then the average calculated.

The average is calculated only for those measurements which have either the mean or the standard deviation computed.
