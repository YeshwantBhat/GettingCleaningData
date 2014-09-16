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

13 tBodyAccJerkmeanX - Mean value of Body acceleration  jerk  in X-Axis and time domain.

14 tBodyAccJerkmeanY - Mean value of Body  acceleration jerk  in Y-Axis and time domain.

15 tBodyAccJerkmeanZ - Mean value of Body  acceleration jerk  in Z-Axis and time domain.

16 tBodyAccJerkstdX  - Mean value of std of Body  acceleration jerk  in X-Axis and time domain.

17 tBodyAccJerkstdY  - Mean value of std of Body  acceleration jerk  in Y-Axis and time domain.

18 tBodyAccJerkstdZ  - Mean value of std of Body  acceleration jerk  in Z-Axis and time domain.

19 tBodyGyromeanX    - Mean value of Body angular velocity in X-Axis and time domain.

20 tBodyGyromeanY    - Mean value of Body angular velocity in Y-Axis and time domain.  

21 tBodyGyromeanZ    - Mean value of Body angular velocity in Z-Axis and time domain.

22 tBodyGyrostdX     - Mean value of std of Body angular velocity in X-Axis and time domain.

23 tBodyGyrostdY     - Mean value of std of Body angular velocity in Y-Axis and time domain.  

24 tBodyGyrostdZ     - Mean value of std of Body angular velocity in Z-Axis and time domain.

25 tBodyGyroJerkmeanX - Mean value of Body jerk in X-Axis and time domain.

26 tBodyGyroJerkmeanY - Mean value of Body jerk in Y-Axis and time domain.

27 tBodyGyroJerkmeanZ - Mean value of Body jerk in Z-Axis and time domain.

28 tBodyGyroJerkstdX  - Mean value of std of Body jerk in X-Axis and time domain.

29 tBodyGyroJerkstdY  - Mean value of std of Body jerk in Y-Axis and time domain.

30 tBodyGyroJerkstdZ  - Mean value of std of Body jerk in Z-Axis and time domain.

31 tBodyAccMagmean    - Mean value of Body acceleration Euclidean norm in time domain.

32 tBodyAccMagstd     - Mean value of std of Body acceleration Euclidean norm in time domain.

33 tGravityAccMagmean - Mean value of Gravity acceleration Euclidean norm in time domain. 

34 tGravityAccMagstd  - Mean value of std of Gravity acceleration Euclidean norm in time domain.

35 tBodyAccJerkMagmean - Mean value of Body acceleration jerk Euclidean norm in time domain.

36 tBodyAccJerkMagstd  - Mean value of std of Body acceleration jerk Euclidean norm in time domain.

37 tBodyGyroMagmean    - Mean value of Body angular velocity Euclidean norm in time domain.

38 tBodyGyroMagstd     - Mean value of std of Body angular velocity Euclidean norm in time domain.

39 tBodyGyroJerkMagmean - Mean value of Body jerk Euclidean norm in time domain.

40 tBodyGyroJerkMagstd  - Mean value of std of Body jerk Euclidean norm in time domain.

41 fBodyAccmeanX        - Mean value of Body acceleration in X-Axis and frequency domain.

42 fBodyAccmeanY        - Mean value of Body acceleration in Y-Axis and frequency domain.

43 fBodyAccmeanZ        - Mean value of Body acceleration in Z-Axis and frequency domain.

44 fBodyAccstdX         - Mean value of std of Body acceleration in X-Axis and frequency domain.

45 fBodyAccstdY         - Mean value of std of Body acceleration in Y-Axis and frequency domain.

46 fBodyAccstdZ         - Mean value of Body acceleration in Z-Axis and frequency domain.

47 fBodyAccJerkmeanX    - Mean value of Body acceleration  jerk  in X-Axis and frequency domain.

48 fBodyAccJerkmeanY    - Mean value of Body acceleration  jerk  in Y-Axis and frequency domain.

49 fBodyAccJerkmeanZ    - Mean value of Body acceleration  jerk  in Z-Axis and frequency domain.

50 fBodyAccJerkstdX     - Mean value of std of Body acceleration  jerk  in X-Axis and frequency domain.

51 fBodyAccJerkstdY     - Mean value of std of Body acceleration  jerk  in Y-Axis and frequency domain.

52 fBodyAccJerkstdZ     - Mean value of std of Body acceleration  jerk  in Z-Axis and frequency domain.

53 fBodyGyromeanX       - Mean value of Body angular velocity in X-Axis and frequency domain.

54 fBodyGyromeanY       - Mean value of Body angular velocity in Y-Axis and frequency domain. 

55 fBodyGyromeanZ       - Mean value of Body angular velocity in Z-Axis and frequency domain.

56 fBodyGyrostdX        - Mean value of std of Body angular velocity in X-Axis and frequency domain.

57 fBodyGyrostdY        - Mean value of std of Body angular velocity in Y-Axis and frequency domain.

58 fBodyGyrostdZ        - Mean value of std of Body angular velocity in Z-Axis and frequency domain.

59 fBodyAccMagmean      - Mean value of Body acceleration Euclidean norm in frequency domain. 

60 fBodyAccMagstd       - Mean value of std of Body acceleration Euclidean norm in frequency domain. 

61 fBodyBodyAccJerkMagmean - Mean value of Body acceleration jerk Euclidean norm in frequency domain.

62 fBodyBodyAccJerkMagstd  - Mean value of std of Body acceleration jerk Euclidean norm in frequency domain.

63 fBodyBodyGyroMagmean    - Mean value of Body angular velocity Euclidean norm in frequency domain.

64 fBodyBodyGyroMagstd     - Mean value of std of Body angular velocity Euclidean norm in frequency domain.

65 fBodyBodyGyroJerkMagmean - Mean value of Body jerk Euclidean norm in frequency domain.

66 fBodyBodyGyroJerkMagstd  - Mean value of std of Body jerk Euclidean norm in frequency domain.










### mean Description

MEAN
17   (16 implied decimal places)

Mean of the particular measurement values for a given combination of subject and activity.

Individual  values for a particular measurement have been added for a particular combination of subject,activity
and then the average calculated.

The average is calculated only for those measurements which have either the mean or the standard deviation computed.
