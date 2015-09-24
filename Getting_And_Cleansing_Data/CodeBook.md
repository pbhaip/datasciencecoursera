# DATA DICTIONARY - tidy_data

# Project description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

# Summary :
1. Selected columns were used from the supplied dataset containing mean and standard deviation in the column names. (86 columns out of total 561 test and training data contained mean and standard deviation)
2. Names were standardized for the dataframe columns
3. Activity description was added to the data set. Activity Id was maintained since sorting by acivity description will not have intended results if the activity sequence is to be maintained in final output
4. The test data set and training data set are combined together
5. Average of each measured variable (86 variables) for each activity and each subject was computed. The data set was grouped by Subject_Id,Activity_Id,Activity_desc and mean was calculated for all the measured variables
6. Accompanying README.md provides details of the overall process of tidy data preparation.

General Note :
1. Variable prefix
"t" prefix denotes time domain signal
"f" prefix denotes frequency domain signal
2. Aggregate Variables follow Activity_desc and are averaged by Subject Id, Activity Id and Activity_desc
3. The tidy dataset units are as follows

  Column 1    : Subject_Id  - Number of persons (volunteers)
  Column 2    : Activity_Id - Type of activity
  Column 3    : Activity_desc - Text explaining activity
  Column 4-88 : The remaining aggregate values have been normalized to [-1..+1]. The normalization would have impacted the original unit of measure. 

# tidy_data set
             
    Subject_Id    2
      Subject Identifier
            1..30 The subject who performed the activity  
            
    Activity_Id   1
      Activity Identifier 
            1..6      Uniques identifier describing the activity
            
    Activity_desc Text string 17
            Text string identifying the activity 
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
                  
# Lookup Table                  
Lookup table to map tidy dataset output column to data source column names                   
|------------------------------------|---------------------------------------------|---------------------------|
|    Tidy data set 1..3              | Column details in Source file               | Column No in source       |
|------------------------------------|---------------------------------------------|---------------------------|
|    Subject_Id                      | Subject (Source -Subject_test/Subject_train |                          1|
|    Activity_Id                     | Activity (Source file - y_test, y_train     |                          1|
|    Activity_desc                   | Activity description (in README.txt)        |                           |
|------------------------------------|---------------------------------------------|---------------------------|
|    Tidy data set 4..89             | Column No in Source file                    | Column No X_test, X_train |
|------------------------------------|---------------------------------------------|---------------------------|
|    tBodyAcc.mean.X                 | tBodyAcc-mean()-X                           |                          1|
|    tBodyAcc.mean.Y                 | tBodyAcc-mean()-Y                           |                          2|
|    tBodyAcc.mean.Z                 | tBodyAcc-mean()-Z                           |                          3|
|    tBodyAcc.std.X                  | tBodyAcc-std()-X                            |                          4|
|    tBodyAcc.std.Y                  | tBodyAcc-std()-Y                            |                          5|
|    tBodyAcc.std.Z                  | tBodyAcc-std()-Z                            |                          6|
|    tGravityAcc.mean.X              | tGravityAcc-mean()-X                        |                         41|
|    tGravityAcc.mean.Y              | tGravityAcc-mean()-Y                        |                         42|
|    tGravityAcc.mean.Z              | tGravityAcc-mean()-Z                        |                         43|
|    tGravityAcc.std.X               | tGravityAcc-std()-X                         |                         44|
|    tGravityAcc.std.Y               | tGravityAcc-std()-Y                         |                         45|
|    tGravityAcc.std.Z               | tGravityAcc-std()-Z                         |                         46|
|    tBodyAccJerk.mean.X             | tBodyAccJerk-mean()-X                       |                         81|
|    tBodyAccJerk.mean.Y             | tBodyAccJerk-mean()-Y                       |                         82|
|    tBodyAccJerk.mean.Z             | tBodyAccJerk-mean()-Z                       |                         83|
|    tBodyAccJerk.std.X              | tBodyAccJerk-std()-X                        |                         84|
|    tBodyAccJerk.std.Y              | tBodyAccJerk-std()-Y                        |                         85|
|    tBodyAccJerk.std.Z              | tBodyAccJerk-std()-Z                        |                         86|
|    tBodyGyro.mean.X                | tBodyGyro-mean()-X                          |                        121|
|    tBodyGyro.mean.Y                | tBodyGyro-mean()-Y                          |                        122|
|    tBodyGyro.mean.Z                | tBodyGyro-mean()-Z                          |                        123|
|    tBodyGyro.std.X                 | tBodyGyro-std()-X                           |                        124|
|    tBodyGyro.std.Y                 | tBodyGyro-std()-Y                           |                        125|
|    tBodyGyro.std.Z                 | tBodyGyro-std()-Z                           |                        126|
|    tBodyGyroJerk.mean.X            | tBodyGyroJerk-mean()-X                      |                        161|
|    tBodyGyroJerk.mean.Y            | tBodyGyroJerk-mean()-Y                      |                        162|
|    tBodyGyroJerk.mean.Z            | tBodyGyroJerk-mean()-Z                      |                        163|
|    tBodyGyroJerk.std.X             | tBodyGyroJerk-std()-X                       |                        164|
|    tBodyGyroJerk.std.Y             | tBodyGyroJerk-std()-Y                       |                        165|
|    tBodyGyroJerk.std.Z             | tBodyGyroJerk-std()-Z                       |                        166|
|    tBodyAccMag.mean                | tBodyAccMag-mean()                          |                        201|
|    tBodyAccMag.std                 | tBodyAccMag-std()                           |                        202|
|    tGravityAccMag.mean             | tGravityAccMag-mean()                       |                        214|
|    tGravityAccMag.std              | tGravityAccMag-std()                        |                        215|
|    tBodyAccJerkMag.mean            | tBodyAccJerkMag-mean()                      |                        227|
|    tBodyAccJerkMag.std             | tBodyAccJerkMag-std()                       |                        228|
|    tBodyGyroMag.mean               | tBodyGyroMag-mean()                         |                        240|
|    tBodyGyroMag.std                | tBodyGyroMag-std()                          |                        241|
|    tBodyGyroJerkMag.mean           | tBodyGyroJerkMag-mean()                     |                        253|
|    tBodyGyroJerkMag.std            | tBodyGyroJerkMag-std()                      |                        254|
|    fBodyAcc.mean.X                 | fBodyAcc-mean()-X                           |                        266|
|    fBodyAcc.mean.Y                 | fBodyAcc-mean()-Y                           |                        267|
|    fBodyAcc.mean.Z                 | fBodyAcc-mean()-Z                           |                        268|
|    fBodyAcc.std.X                  | fBodyAcc-std()-X                            |                        269|
|    fBodyAcc.std.Y                  | fBodyAcc-std()-Y                            |                        270|
|    fBodyAcc.std.Z                  | fBodyAcc-std()-Z                            |                        271|
|    fBodyAcc.meanFreq.X             | fBodyAcc-meanFreq()-X                       |                        294|
|    fBodyAcc.meanFreq.Y             | fBodyAcc-meanFreq()-Y                       |                        295|
|    fBodyAcc.meanFreq.Z             | fBodyAcc-meanFreq()-Z                       |                        296|
|    fBodyAccJerk.mean.X             | fBodyAccJerk-mean()-X                       |                        345|
|    fBodyAccJerk.mean.Y             | fBodyAccJerk-mean()-Y                       |                        346|
|    fBodyAccJerk.mean.Z             | fBodyAccJerk-mean()-Z                       |                        347|
|    fBodyAccJerk.std.X              | fBodyAccJerk-std()-X                        |                        348|
|    fBodyAccJerk.std.Y              | fBodyAccJerk-std()-Y                        |                        349|
|    fBodyAccJerk.std.Z              | fBodyAccJerk-std()-Z                        |                        350|
|    fBodyAccJerk.meanFreq.X         | fBodyAccJerk-meanFreq()-X                   |                        373|
|    fBodyAccJerk.meanFreq.Y         | fBodyAccJerk-meanFreq()-Y                   |                        374|
|    fBodyAccJerk.meanFreq.Z         | fBodyAccJerk-meanFreq()-Z                   |                        375|
|    fBodyGyro-mean-X                | fBodyGyro-mean()-X                          |                        424|
|    fBodyGyro-mean-Y                | fBodyGyro-mean()-Y                          |                        425|
|    fBodyGyro-mean-Z                | fBodyGyro-mean()-Z                          |                        426|
|    fBodyGyro.std.X                 | fBodyGyro-std()-X                           |                        427|
|    fBodyGyro.std.Y                 | fBodyGyro-std()-Y                           |                        428|
|    fBodyGyro.std.Z                 | fBodyGyro-std()-Z                           |                        429|
|    fBodyGyro.meanFreq.X            | fBodyGyro-meanFreq()-X                      |                        452|
|    fBodyGyro.meanFreq.Y            | fBodyGyro-meanFreq()-Y                      |                        453|
|    fBodyGyro.meanFreq.Z            | fBodyGyro-meanFreq()-Z                      |                        454|
|    fBodyAccMag.mean                | fBodyAccMag-mean()                          |                        503|
|    fBodyAccMag.std                 | fBodyAccMag-std()                           |                        504|
|    fBodyAccMag.meanFreq            | fBodyAccMag-meanFreq()                      |                        513|
|    fBodyBodyAccJerkMag.mean        | fBodyBodyAccJerkMag-mean()                  |                        516|
|    fBodyBodyAccJerkMag.std         | fBodyBodyAccJerkMag-std()                   |                        517|
|    fBodyBodyAccJerkMag.meanFreq    | fBodyBodyAccJerkMag-meanFreq()              |                        526|
|    fBodyBodyGyroMag.mean           | fBodyBodyGyroMag-mean()                     |                        529|
|    fBodyBodyGyroMag.std            | fBodyBodyGyroMag-std()                      |                        530|
|    fBodyBodyGyroMag.meanFreq       | fBodyBodyGyroMag-meanFreq()                 |                        539|
|    fBodyBodyGyroJerkMag.mean       | fBodyBodyGyroJerkMag-mean()                 |                        542|
|    fBodyBodyGyroJerkMag.std        | fBodyBodyGyroJerkMag-std()                  |                        543|
|    fBodyBodyGyroJerkMag.meanFreq   | fBodyBodyGyroJerkMag-meanFreq()             |                        552|
|    angle.tBodyAccMean.gravity      | angle(tBodyAccMean,gravity)                 |                        555|
|    angle.tBodyAccJerkMean.gravityMe| angle(tBodyAccJerkMean),gravityMean)        |                        556|
|    angle.tBodyGyroMean.gravityMean | angle(tBodyGyroMean,gravityMean)            |                        557|
|    angle.tBodyGyroJerkMean.gravityM| angle(tBodyGyroJerkMean,gravityMean)        |                        558|
|    angle.X.gravityMean             | angle(X,gravityMean)                        |                        559|
|    angle.Y.gravityMean             | angle(Y,gravityMean)                        |                        560|
|    angle.Z.gravityMean             | angle(Z,gravityMean)                        |                        561|
|------------------------------------|---------------------------------------------|---------------------------|



   