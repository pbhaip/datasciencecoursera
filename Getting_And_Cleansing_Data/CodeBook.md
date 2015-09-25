# DATA DICTIONARY - tidy_data

## Project description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Summary :
1. Selected columns were used from the supplied dataset containing mean and standard deviation in the column names. (86 columns out of total 561 test and training data contained mean and standard deviation)
2. Names were standardized for the dataframe columns
3. Activity description was added to the data set. Activity_Id was maintained since sorting by acivity description will not have intended results if the activity sequence is to be maintained in final output
4. The test data set and training data set are combined together into a single dataset
5. From this combined set, average of each measured variable (86 variables) for each activity and each subject was computed. The data set was grouped by Subject_Id,Activity_Id,Activity_desc and mean was calculated for all the measured variables
6. Accompanying README.md provides details of the overall process of tidy data preparation.

## General Notes :
1. Variable prefix
"t" prefix denotes time domain signal
"f" prefix denotes frequency domain signal

2. Aggregate Variables follow Activity_desc and are averaged by Subject Id, Activity Id and Activity_desc

3. Note about Data source variables   
 + tAcc-XYZ, tGyro-XYZ : The features selected for this database come from the accelerometer and gyroscope are time domain signals and are 3-axial raw signals.(captured at 50Hz)  
 + Body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)  were filtered at 0.3Hz  
 + Body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
 + Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   
 + Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
 + These signals were used to estimate variables of the feature vector for each pattern:  
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
 + Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
      gravityMean  
      tBodyAccMean  
      tBodyAccJerkMean  
      tBodyGyroMean  
      tBodyGyroJerkMean      
 + The set of variables picked up for preparing Tidy dataset included only mean & standard deviation (86 out of 561): 
    mean(): Mean value  
    std(): Standard deviation  
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency  

4. The tidy dataset units are as follows

    Column 1    : Subject_Id  - Number of persons (volunteers)  
    Column 2    : Activity_Id - Type of activity  
    Column 3    : Activity_desc - Text explaining activity  
    Column 4-88 : The remaining aggregate values have been normalized to [-1..+1]. The normalization would have        impacted the original unit of measurure. These normalized values have no units.

## Tidy_data complete set
             
    Subject_Id    2
      Subject Identifier
            1..30 The subject who performed the activity  
            
    Activity_Id   1
      Activity Identifier 
            1..6      Unique identifier describing the activity
            
    Activity_desc Text string 17
            Text string identifying the activity details
        WALKING             (Activity Id = 1)
        WALKING_UPSTAIRS    (Activity Id = 2)
        WALKING_DOWNSTAIRS  (Activity Id = 3)  
        SITTING             (Activity Id = 4)
        STANDING            (Activity Id = 5)
        LAYING              (Activity Id = 6)
    
    tBodyAcc.mean.X       18
      Mean value of Body acceleration signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAcc.mean.Y       18
     Mean value of Body acceleration signal in Y direction
                  -1.000000000000000 ..+1.000000000000000
 
    tBodyAcc.mean.Z       18
      Mean value of Body acceleration signal in Z direction
                  -1.000000000000000 ..+1.000000000000000
     
    tBodyAcc.std.X        18
      Standard deviation value of Body acceleration signal in X direction
                  -1.000000000000000 ..+1.000000000000000
      
    tBodyAcc.std.Y        18
      Standard deviation value of Body acceleration signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAcc.std.Z        18
      Standard deviation value of Body acceleration signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tGravityAcc.mean.X    18  
      Mean value of Gravity acceleration signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tGravityAcc.mean.Y    18
      Mean value of Gravity acceleration signal in Y direction
                  -1.000000000000000 ..+1.000000000000000
      
    tGravityAcc.mean.Z    18
      Mean value of Gravity acceleration signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tGravityAcc.std.X     18
      Standad deviation value of Gravity acceleration signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tGravityAcc.std.Y     18
      Standad deviation value of Gravity acceleration signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tGravityAcc.std.Z     18
      Standad deviation value of Gravity acceleration signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.mean.X   18
      Mean value of Body acceleration Jerk signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.mean.Y   18
      Mean value of Body acceleration Jerk signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.mean.Z   18
      Mean value of Body acceleration Jerk signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.std.X    18
      Mean value of Body acceleration Jerk signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.std.Y    18
      Mean value of Body acceleration Jerk signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerk.std.Z    18  
      Mean value of Body acceleration Jerk signal in Z direction  
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyro.mean.X        18
      Mean value of Body Gyro signal in X direction
                  -1.000000000000000 ..+1.000000000000000
      
    tBodyGyro.mean.Y        18
      Mean value of Body Gyro signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyro.mean.Z        18
      Mean value of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyro.std.X         18
     Standard deviation value of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyro.std.Y         18
     Standard deviation value of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyro.std.Z         18
     Standard deviation value of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroJerk.mean.X    18
      Mean value of Body Gyro Jerk signal in X direction
                  -1.000000000000000 ..+1.000000000000000
 
    tBodyGyroJerk.mean.Y    18
      Mean value of Body Gyro Jerk signal in Y direction
                  -1.000000000000000 ..+1.000000000000000
 
    tBodyGyroJerk.mean.Z    18
      Mean value of Body Gyro Jerk signal in Z direction
                  -1.000000000000000 ..+1.000000000000000
    
    tBodyGyroJerk.std.X     18
      Standard deviation value of Body Gyro Jerk signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroJerk.std.Y     18
      Standard deviation value of Body Gyro Jerk signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroJerk.std.Z     18
      Standard deviation value of Body Gyro Jerk signal in Z direction
                  -1.000000000000000 ..+1.000000000000000
    
    tBodyAccMag.mean        18
      Mean of Body Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000
      
    tBodyAccMag.std         18
      Standard deviation of Body Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000
    
    tGravityAccMag.mean     18
        Mean of Gravity Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000
  
    tGravityAccMag.std      18
        Standard deviation of Gravity Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000

    tBodyAccJerkMag.mean    18
        Mean of Body Acceleration Jerk Magnitude signal
                  -1.000000000000000 ..+1.000000000000000
        
    tBodyAccJerkMag.std   18  
        Standard deviation of Body Acceleration Jerk Magnitude signal
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroMag.mean     18
        Mean of Body Gyro magnitude signal
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroMag.std      18
        Standard deviation of Body Gyro magnitude signal
                  -1.000000000000000 ..+1.000000000000000

    tBodyGyroJerkMag.mean 18
        Mean of Body Gyro Jerk magnitude signal
                  -1.000000000000000 ..+1.000000000000000
          
    tBodyGyroJerkMag.std  18  
        Standard deviation of Body Gyro Jerk magnitude signal
                  -1.000000000000000 ..+1.000000000000000
             
    fBodyAcc.mean.X       18
        Body Aceleration mean for signal in X direction
                  -1.000000000000000 ..+1.000000000000000
        
    fBodyAcc.mean.Y       18
        Body Aceleration mean for signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.mean.Z       18
        Body Aceleration mean for signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.std.X        18
        Body Aceleration standard deviation for signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.std.Y        18
        Body Aceleration standard deviation for signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.std.Z        18
        Body Aceleration standard deviation for signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.meanFreq.X   18
        Body Aceleration mean frequency for signal in X direction
                  -1.000000000000000 ..+1.000000000000000
          
    fBodyAcc.meanFreq.Y   18
        Body Aceleration mean frequency for signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAcc.meanFreq.Z   18
        Body Aceleration mean frequency for signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccJerk.mean.X   18
        Body Aceleration Jerk mean for signal in X direction
                  -1.000000000000000 ..+1.000000000000000
        
    fBodyAccJerk.mean.Y   18
        Body Aceleration Jerk mean for signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccJerk.mean.Z   18
        Body Aceleration Jerk mean for signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccJerk.std.X   18
        Body Aceleration Jerk standard deviation for signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccJerk.std.Y   18
        Body Aceleration Jerk standard deviation for signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccJerk.std.Z   18  
        Body Aceleration Jerk standard deviation for signal in Z direction
                  -1.000000000000000 ..+1.000000000000000  

    fBodyAccJerk.meanFreq.X 18  
      Mean value of Body acceleration Jerk signal in X direction (freq domain)  
                  -1.000000000000000 ..+1.000000000000000  

    fBodyAccJerk.meanFreq.Y 18  
      Mean value of Body acceleration Jerk signal in Y direction (freq domain)  
                  -1.000000000000000 ..+1.000000000000000  

    fBodyAccJerk.meanFreq.Z 18
      Mean value of Body acceleration Jerk signal in Z direction (freq domain)
                  -1.000000000000000 ..+1.000000000000000

    fBodyGyro-mean-X   18
        Mean of Body Gyro signal in X direction
                  -1.000000000000000 ..+1.000000000000000
        
    fBodyGyro-mean-Y   18
        Mean of Body Gyro signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyGyro-mean-Z   18
        Mean of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyGyro.std.X   18
        Standard deviation of Body Gyro signal in X direction
                  -1.000000000000000 ..+1.000000000000000
        
    fBodyGyro.std.Y   18
        Standard deviation of Body Gyro signal in Y direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyGyro.std.Z   18
        Standard deviation of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000
  
    fBodyGyro.meanFreq.X    18
      Mean freq of Body Gyro signal in X direction
                  -1.000000000000000 ..+1.000000000000000

    fBodyGyro.meanFreq.Y    18
      Mean freq of Body Gyro signal in Y direction
                  -1.000000000000000 ..+1.000000000000000
      
    fBodyGyro.meanFreq.Z    18
      Mean freq of Body Gyro signal in Z direction
                  -1.000000000000000 ..+1.000000000000000
                
    fBodyAccMag.mean   18
      Mean of Body Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccMag.std   18
      Standard deviation of Body Acceleration magnitude
                  -1.000000000000000 ..+1.000000000000000

    fBodyAccMag.meanFreq   18
     Mean of Body Acceleration magnitude frequency
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyAccJerkMag.mean   18
     Mean of Body Acceleration Jerk magnitude frequency
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyAccJerkMag.std   18
     Standard deviation of Body Acceleration Jerk magnitude frequency
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyAccJerkMag.meanFreq   18
     Mean frequency of Body Body Acceleration Jerk magnitude
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyGyroMag.mean   18
      Mean of Body Body Gyro Magnitude 
                  -1.000000000000000 ..+1.000000000000000
            
    fBodyBodyGyroMag.std   18
      Standard deviation of Body Body Gyro Magnitude 
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyGyroMag.meanFreq   18
     Mean Frequency of Body Body Gyro Magnitude 
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyGyroJerkMag.mean   18
     Mean of Body Body Gyro Jerk Magnitude 
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyGyroJerkMag.std   18
     Standard deviation of Body Body Gyro Jerk Magnitude 
                  -1.000000000000000 ..+1.000000000000000

    fBodyBodyGyroJerkMag.meanFreq   18
     Mean Frequency of Body Body Gyro Jerk Magnitude 
                  -1.000000000000000 ..+1.000000000000000

    angle.tBodyAccMean.gravity   18
      Angle Body Acceleration mean for gravity
                  -1.000000000000000 ..+1.000000000000000
    
    angle.tBodyAccJerkMean.gravityMean     18
      Angle Body Acceleration Jerk mean for gravity
                  -1.000000000000000 ..+1.000000000000000

    angle.tBodyGyroMean.gravityMean   18
      Angle Body Gyro mean for gravity
                  -1.000000000000000 ..+1.000000000000000

    angle.tBodyGyroJerkMean.gravityMean   18
      Angle Body Gyro Jerk mean for gravity
                  -1.000000000000000 ..+1.000000000000000

    angle.X.gravityMean   18
      Angle mean for gravity in X direction  
                  -1.000000000000000 ..+1.000000000000000

    angle.Y.gravityMean   18
      Angle mean for gravity in Y direction
                  -1.000000000000000 ..+1.000000000000000

    angle.Z.gravityMean   18
      Angle mean for gravity in Z direction
                  -1.000000000000000 ..+1.000000000000000
                  
