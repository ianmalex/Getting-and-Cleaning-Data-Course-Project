Code Book

The inital file came in the format described in this manner:

    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
    
    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
    
    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
    
    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
    
    tBodyAcc-XYZ
    tGravityAcc-XYZ
    tBodyAccJerk-XYZ
    tBodyGyro-XYZ
    tBodyGyroJerk-XYZ
    tBodyAccMag
    tGravityAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc-XYZ
    fBodyAccJerk-XYZ
    fBodyGyro-XYZ
    fBodyAccMag
    fBodyAccJerkMag
    fBodyGyroMag
    fBodyGyroJerkMag
    
    The set of variables that were estimated from these signals are: 
    
    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation 
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values. 
    iqr(): Interquartile range 
    entropy(): Signal entropy
    arCoeff(): Autorregresion coefficients with Burg order equal to 4
    correlation(): correlation coefficient between two signals
    maxInds(): index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): skewness of the frequency domain signal 
    kurtosis(): kurtosis of the frequency domain signal 
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between to vectors.
    
    Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
    
    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean
    
    The complete list of variables of each feature vector is available in 'features.txt'
    
The test and train datasets were then merged. Certain Variables were renamed as follows:

New Name | Original Name
---  | ---
"time body accelerator-mean-x" | tBodyAcc-mean()-X
"time body accelerator-mean-y" | tBodyAcc-mean()-Y
"time body accelerator-mean-z" | tBodyAcc-mean()-Z
"time body accelerator-std-x" |	tBodyAcc-std()-X
"time body accelerator-std-y" |	tBodyAcc-std()-Y
"time body accelerator-std-z" |	tBodyAcc-std()-Z
"time gravity accelerator-mean-x" |	tGravityAcc-mean()-X
"time gravity accelerator-mean-y" |	tGravityAcc-mean()-Y
"time gravity accelerator-mean-z" |	tGravityAcc-mean()-Z
"time gravity accelerator-std-x" |	tGravityAcc-std()-X
"time gravity accelerator-std-y" |	tGravityAcc-std()-Y
"time gravity accelerator-std-z" |	tGravityAcc-std()-Z
"time body accelerator jerk-mean-x" |	tBodyAccJerk-mean()-X
"time body accelerator jerk-mean-y"	| tBodyAccJerk-mean()-Y
"time body accelerator jerk-mean-z" |	tBodyAccJerk-mean()-Z
"time body accelerator jerk-std-x" |	tBodyAccJerk-std()-X
"time body accelerator jerk-std-y" |	tBodyAccJerk-std()-Y
"time body accelerator jerk-std-z" |	tBodyAccJerk-std()-Z
"time body gyroscope-mean-x" |	tBodyGyro-mean()-X
"time body gyroscope-mean-y" |	tBodyGyro-mean()-Y
"time body gyroscope-mean-z" |	tBodyGyro-mean()-Z
"time body gyroscope-std-x" |	tBodyGyro-std()-X
"time body gyroscope-std-y" |	tBodyGyro-std()-Y
"time body gyroscope-std-z" |	tBodyGyro-std()-Z
"time body gyroscope jerk-mean-x" |	tBodyGyroJerk-mean()-X
"time body gyroscope jerk-mean-y" |	tBodyGyroJerk-mean()-Y
"time body gyroscope jerk-mean-z" |	tBodyGyroJerk-mean()-Z
"time body gyroscope jerk-std-x" |	tBodyGyroJerk-std()-X
"time body gyroscope jerk-std-y" |	tBodyGyroJerk-std()-Y
"time body gyroscope jerk-std-z" |	tBodyGyroJerk-std()-Z
"time body accelerator magnitude-mean" |	tBodyAccMag-mean()
"time body accelerator magnitude-std" |	tBodyAccMag-std()
"time gravity accelerator magnitude-mean" |	tGravityAccMag-mean()
"time gravity accelerator magnitude-std" |	tGravityAccMag-std()
"time body accelerator jerk magnitude-mean" |	tBodyAccJerkMag-mean()
"time body accelerator jerk magnitude-std" |	tBodyAccJerkMag-std()
"time body gyroscope magnitude-mean" |	tBodyGyroMag-mean()
"time body gyroscope magnitude-std" |	tBodyGyroMag-std()
"time body gyroscope jerk magnitude-mean" |	tBodyGyroJerkMag-mean()
"time body gyroscope jerk magnitude-std" |	tBodyGyroJerkMag-std()
"fourier body accelerator-mean-x" |	fBodyAcc-mean()-X
"fourier body accelerator-mean-y" |	fBodyAcc-mean()-Y
"fourier body accelerator-mean-z" |	fBodyAcc-mean()-Z
"fourier body accelerator-std-x" |	fBodyAcc-std()-X
"fourier body accelerator-std-y" |	fBodyAcc-std()-Y
"fourier body accelerator-std-z" |	fBodyAcc-std()-Z
"fourier body accelerator jerk-mean-x" |	fBodyAccJerk-mean()-X
"fourier body accelerator jerk-mean-y" |	fBodyAccJerk-mean()-Y
"fourier body accelerator jerk-mean-z" |	fBodyAccJerk-mean()-Z
"fourier body accelerator jerk-std-x" |	fBodyAccJerk-std()-X
"fourier body accelerator jerk-std-y" |	fBodyAccJerk-std()-Y
"fourier body accelerator jerk-std-z" |	fBodyAccJerk-std()-Z
"fourier body gyroscope-mean-x" |	fBodyGyro-mean()-X
"fourier body gyroscope-mean-y" |	fBodyGyro-mean()-Y
"fourier body gyroscope-mean-z" |	fBodyGyro-mean()-Z
"fourier body gyroscope-std-x" |	fBodyGyro-std()-X
"fourier body gyroscope-std-y" |	fBodyGyro-std()-Y
"fourier body gyroscope-std-z" |	fBodyGyro-std()-Z
"fourier body accelerator magnitude-mean" |	fBodyAccMag-mean()
"fourier body accelerator magnitude-std" |	fBodyAccMag-std()
"fourier body body accelerator jerk magnitude-mean" |	fBodyBodyAccJerkMag-mean()
"fourier body body accelerator jerk magnitude-std" |	fBodyBodyAccJerkMag-std()
"fourier body body gyroscope magnitude-mean" |	fBodyBodyGyroMag-mean()
"fourier body body gyroscope magnitude-std" |	fBodyBodyGyroMag-std()
"fourier body body gyroscope jerk magnitude-mean" |	fBodyBodyGyroJerkMag-mean()
"fourier body body gyroscope jerk magnitude-std" |	fBodyBodyGyroJerkMag-std()
"subject"	 |
"activity"	 |
