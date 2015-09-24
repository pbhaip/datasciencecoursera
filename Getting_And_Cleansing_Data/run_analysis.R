run_analysis <- function()  {
  # Description
  #   This function is used to create tidy data set for the wearable dataset provided in the test and training dataset. 
  #
  # README.md contains the details of the data loading and processing actions on the test and training sets
  # CodeBook.md describes the variables of the Tidy data set
  #
  # Usage
  #   run_analysis() 
  #  
  # Arguments :
  #   Not applicable
  #
  # Returns :
  #   Not applicable
  #
  #Input :  X_test.txt, y_test.txt, Subject_test (Test data)
  #         X_train.txt, y_train.txt, Subject_train (Training data)
  #
  #Output : tidy_data.txt written using write.table and contains dataset explained by CodeBook.md
  #
  # To read this tidy data use read.table & View(df)
  # df <- read.table(output_file_tidy, header = TRUE)
  # View(df)
  # check README.md for code snippet 
  
  setwd("C:\\projects\\Data Science\\Data Cleansing\\Project")
  
  library(dplyr)
  library(tidyr)

  #test data
  datafile1_test <- ".\\data\\test\\X_test.txt"
  datafile2_test <- ".\\data\\test\\y_test.txt"
  datafile3_test <- ".\\data\\test\\subject_test.txt"
  
  #traint data
  datafile1_train <- ".\\data\\train\\X_train.txt"
  datafile2_train <- ".\\data\\train\\y_train.txt"
  datafile3_train <- ".\\data\\train\\subject_train.txt"
  
  #Define Output file
   output_file_tidy <- ".\\data\\output\\tidy_data.txt"
  
  #read and process test data
  x_test <- read.table(datafile1_test,sep="",colClasses=c( rep("numeric",561) ) ,header=FALSE);
  y_test <- read.table(datafile2_test,header=FALSE,sep="");
  subject_test <- read.table(datafile3_test,header=FALSE,sep="");
  
  #review the location of mean and std deviation in the test file and identify which columns have mean and std deviation
  
  x_test_lean <- subset(x_test, select = c(1:6,41:46,81:86,121:126, 161:166,201:202,214:215,227:228,240:241,253:254,
                                           266:271, 294:296, 345:350, 373:375,
                                           424:429, 452:454, 503:504,513, 516:517, 526, 529:530, 539, 542, 543,
                                           552, 555:561)  )
  
 
  #make.names() was seperately used to standardize the names and standardized names were used for data frame columns
  
   names(x_test_lean) <- c(
    "tBodyAcc.mean.X",
    "tBodyAcc.mean.Y",
    "tBodyAcc.mean.Z",
    "tBodyAcc.std.X",
    "tBodyAcc.std.Y",
    "tBodyAcc.std.Z", 
    "tGravityAcc.mean.X",
    "tGravityAcc.mean.Y",
    "tGravityAcc.mean.Z",
    "tGravityAcc.std.X",
    "tGravityAcc.std.Y",
    "tGravityAcc.std.Z",
    "tBodyAccJerk.mean.X",
    "tBodyAccJerk.mean.Y",
    "tBodyAccJerk.mean.Z",
    "tBodyAccJerk.std.X",
    "tBodyAccJerk.std.Y",
    "tBodyAccJerk.std.Z",
    "tBodyGyro.mean.X",
    "tBodyGyro.mean.Y",
    "tBodyGyro.mean.Z",
    "tBodyGyro.std.X",
    "tBodyGyro.std.Y",
    "tBodyGyro.std.Z",
    "tBodyGyroJerk.mean.X",
    "tBodyGyroJerk.mean.Y",
    "tBodyGyroJerk.mean.Z",
    "tBodyGyroJerk.std.X",
    "tBodyGyroJerk.std.Y",
    "tBodyGyroJerk.std.Z",
    "tBodyAccMag.mean",
    "tBodyAccMag.std",
    "tGravityAccMag.mean",
    "tGravityAccMag.std",
    "tBodyAccJerkMag.mean",
    "tBodyAccJerkMag.std",
    "tBodyGyroMag.mean",
    "tBodyGyroMag.std",
    "tBodyGyroJerkMag.mean",
    "tBodyGyroJerkMag.std",
    "fBodyAcc.mean.X",
    "fBodyAcc.mean.Y",
    "fBodyAcc.mean.Z",
    "fBodyAcc.std.X",
    "fBodyAcc.std.Y",
    "fBodyAcc.std.Z",
    "fBodyAcc.meanFreq.X",
    "fBodyAcc.meanFreq.Y",
    "fBodyAcc.meanFreq.Z",
    "fBodyAccJerk.mean.X",
    "fBodyAccJerk.mean.Y",
    "fBodyAccJerk.mean.Z",
    "fBodyAccJerk.std.X",
    "fBodyAccJerk.std.Y",
    "fBodyAccJerk.std.Z",
    "fBodyAccJerk.meanFreq.X",
    "fBodyAccJerk.meanFreq.Y",
    "fBodyAccJerk.meanFreq.Z",
    "fBodyGyro-mean-X",
    "fBodyGyro-mean-Y",
    "fBodyGyro-mean-Z",
    "fBodyGyro.std.X",
    "fBodyGyro.std.Y",
    "fBodyGyro.std.Z",
    "fBodyGyro.meanFreq.X",
    "fBodyGyro.meanFreq.Y",
    "fBodyGyro.meanFreq.Z",
    "fBodyAccMag.mean",
    "fBodyAccMag.std",
    "fBodyAccMag.meanFreq",
    "fBodyBodyAccJerkMag.mean",
    "fBodyBodyAccJerkMag.std",
    "fBodyBodyAccJerkMag.meanFreq",
    "fBodyBodyGyroMag.mean",
    "fBodyBodyGyroMag.std",
    "fBodyBodyGyroMag.meanFreq",
     "fBodyBodyGyroJerkMag.mean",
    "fBodyBodyGyroJerkMag.std",
    "fBodyBodyGyroJerkMag.meanFreq",
    "angle.tBodyAccMean.gravity",
    "angle.tBodyAccJerkMean.gravityMean",
    "angle.tBodyGyroMean.gravityMean",
    "angle.tBodyGyroJerkMean.gravityMean",
    "angle.X.gravityMean",
    "angle.Y.gravityMean",
    "angle.Z.gravityMean"  
    )


   #add activity description
#create additional dataframe to create activity id, this is good to have especially for sorting
#since sorting by description will not have intended results if the activity sequence is to be maintained
#in final output   
    y_test_activity_desc <- y_test
     
   
   y_test_activity_desc[y_test_activity_desc=="1"] <- "WALKING"
   y_test_activity_desc[y_test_activity_desc=="2"] <- "WALKING_UPSTAIRS"
   y_test_activity_desc[y_test_activity_desc=="3"] <- "WALKING_DOWNSTAIRS"
   y_test_activity_desc[y_test_activity_desc=="4"] <- "SITTING"
   y_test_activity_desc[y_test_activity_desc=="5"] <- "STANDING"
   y_test_activity_desc[y_test_activity_desc=="6"] <- "LAYING"

#combine the activity id and activity description   
   y_test_all <- cbind(y_test,y_test_activity_desc)
   names(y_test_all) <- c("Activity_Id", "Activity_desc")
   
#add column names for subject data frame
   names(subject_test) <- c("Subject_Id")
 
#Combine all dataframes, this is the test dataframe set
    mergetest <- cbind(subject_test,y_test_all,x_test_lean)
 
#========================================================================================
    
    #read and process train data
    
    x_train <- read.table(datafile1_train,sep="",colClasses=c( rep("numeric",561) ) ,header=FALSE);
    y_train <- read.table(datafile2_train,header=FALSE,sep="");
    subject_train <- read.table(datafile3_train,header=FALSE,sep="");
    
#review the location of mean and std deviation in the train file and identify which columns have mean and std deviation

    x_train_lean <- subset(x_train, select = c(1:6,41:46,81:86,121:126, 161:166,201:202,214:215,227:228,240:241,253:254,
                                               266:271, 294:296, 345:350, 373:375,
                                               424:429, 452:454, 503:504,513, 516:517, 526, 529:530, 539, 542, 543,
                                               552, 555:561)  )
    
    
 #make.names() was seperately used to standardize the names and standardized names were used for data frame columns
    
    names(x_train_lean) <- c(
      "tBodyAcc.mean.X",
      "tBodyAcc.mean.Y",
      "tBodyAcc.mean.Z",
      "tBodyAcc.std.X",
      "tBodyAcc.std.Y",
      "tBodyAcc.std.Z", 
      "tGravityAcc.mean.X",
      "tGravityAcc.mean.Y",
      "tGravityAcc.mean.Z",
      "tGravityAcc.std.X",
      "tGravityAcc.std.Y",
      "tGravityAcc.std.Z",
      "tBodyAccJerk.mean.X",
      "tBodyAccJerk.mean.Y",
      "tBodyAccJerk.mean.Z",
      "tBodyAccJerk.std.X",
      "tBodyAccJerk.std.Y",
      "tBodyAccJerk.std.Z",
      "tBodyGyro.mean.X",
      "tBodyGyro.mean.Y",
      "tBodyGyro.mean.Z",
      "tBodyGyro.std.X",
      "tBodyGyro.std.Y",
      "tBodyGyro.std.Z",
      "tBodyGyroJerk.mean.X",
      "tBodyGyroJerk.mean.Y",
      "tBodyGyroJerk.mean.Z",
      "tBodyGyroJerk.std.X",
      "tBodyGyroJerk.std.Y",
      "tBodyGyroJerk.std.Z",
      "tBodyAccMag.mean",
      "tBodyAccMag.std",
      "tGravityAccMag.mean",
      "tGravityAccMag.std",
      "tBodyAccJerkMag.mean",
      "tBodyAccJerkMag.std",
      "tBodyGyroMag.mean",
      "tBodyGyroMag.std",
      "tBodyGyroJerkMag.mean",
      "tBodyGyroJerkMag.std",
      "fBodyAcc.mean.X",
      "fBodyAcc.mean.Y",
      "fBodyAcc.mean.Z",
      "fBodyAcc.std.X",
      "fBodyAcc.std.Y",
      "fBodyAcc.std.Z",
      "fBodyAcc.meanFreq.X",
      "fBodyAcc.meanFreq.Y",
      "fBodyAcc.meanFreq.Z",
      "fBodyAccJerk.mean.X",
      "fBodyAccJerk.mean.Y",
      "fBodyAccJerk.mean.Z",
      "fBodyAccJerk.std.X",
      "fBodyAccJerk.std.Y",
      "fBodyAccJerk.std.Z",
      "fBodyAccJerk.meanFreq.X",
      "fBodyAccJerk.meanFreq.Y",
      "fBodyAccJerk.meanFreq.Z",
      "fBodyGyro-mean-X",
      "fBodyGyro-mean-Y",
      "fBodyGyro-mean-Z",
      "fBodyGyro.std.X",
      "fBodyGyro.std.Y",
      "fBodyGyro.std.Z",
      "fBodyGyro.meanFreq.X",
      "fBodyGyro.meanFreq.Y",
      "fBodyGyro.meanFreq.Z",
      "fBodyAccMag.mean",
      "fBodyAccMag.std",
      "fBodyAccMag.meanFreq",
      "fBodyBodyAccJerkMag.mean",
      "fBodyBodyAccJerkMag.std",
      "fBodyBodyAccJerkMag.meanFreq",
      "fBodyBodyGyroMag.mean",
      "fBodyBodyGyroMag.std",
      "fBodyBodyGyroMag.meanFreq",
      "fBodyBodyGyroJerkMag.mean",
      "fBodyBodyGyroJerkMag.std",
      "fBodyBodyGyroJerkMag.meanFreq",
      "angle.tBodyAccMean.gravity",
      "angle.tBodyAccJerkMean.gravityMean",
      "angle.tBodyGyroMean.gravityMean",
      "angle.tBodyGyroJerkMean.gravityMean",
      "angle.X.gravityMean",
      "angle.Y.gravityMean",
      "angle.Z.gravityMean"  
)
    
#add activity description
#create additional dataframe to create activity id, this is good to have especially for sorting
#since sorting by description will not have intended results if the activity sequence is to be maintained
#in final output   
    
    y_train_activity_desc <- y_train
    
    y_train_activity_desc[y_train_activity_desc=="1"] <- "WALKING"
    y_train_activity_desc[y_train_activity_desc=="2"] <- "WALKING_UPSTAIRS"
    y_train_activity_desc[y_train_activity_desc=="3"] <- "WALKING_DOWNSTAIRS"
    y_train_activity_desc[y_train_activity_desc=="4"] <- "SITTING"
    y_train_activity_desc[y_train_activity_desc=="5"] <- "STANDING"
    y_train_activity_desc[y_train_activity_desc=="6"] <- "LAYING"
    
#combine the activity id and activity description   
    y_train_all <- cbind(y_train,y_train_activity_desc)
    names(y_train_all) <- c("Activity_Id", "Activity_desc")
    
#add column names for subject data frame
    names(subject_train) <- c("Subject_Id")
    
#Combine all dataframes, this is the train dataframe set
    mergetrain <- cbind(subject_train,y_train_all,x_train_lean)
    
#====Combine test and training data set==============================================================    
    complete1 <- rbind(mergetest, mergetrain)

#prepare tidy data with average of each variable for each activity and subject    
    x <- complete1 %>% 
      dplyr::group_by(Subject_Id,Activity_Id,Activity_desc ) %>% 
      dplyr::summarise_each( funs(mean)) 
    
# Output the tidy dataset    
    
  write.table(x,file= output_file_tidy, row.names = FALSE)

}