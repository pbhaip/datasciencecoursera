# Project description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


# Code description :

Directory/File information  
a) Working directory : C:\\projects\\Data Science\\Data Cleansing\\Project.    

b) Data directory (Test) : .\\data\\test
Files :     X_test.txt, y_test.txt, Subject_test

Data directory (Training) : .\\data\\train
Files :     X_train.txt, y_train.txt, Subject_train

c) CodeBook.md describes the variables of the Tidy data set

## Tidy Data preparation process
### 1. Data loading into Dataframe, Name standardization (Test data set)  
   A) Data was loaded into the seperate dataframes

The test dataset includes the following files were loaded into the data frames
* X_test.txt  - Loaded only mean and std deviation variables in the test file (86 columns out of 561)
* y_test.txt - Complete load
* Subject_test - Complete load

  B) Name standardization
make.names() was seperately used to standardize the names and standardized names were used for data frame columns
    
  C) Added acitivity description  
Created additional dataframe to create activity id, this is good to have especially for sorting
since sorting by description will not have intended results if the activity sequence is to be maintained
in final output   

  D) Combined the activity id and activity description   
  
  E) Added column names for subject data frame

  F) Combine all dataframes, this is the test dataframe set

### 2. Data loading into Dataframe, Name standardization (Training data set)
   A) Data was loaded into the seperate dataframes were loaded into the data frames

  The train dataset includes the following files were loaded
* X_train.txt  - Loaded only mean and std deviation variables in the training file. (86 columns out of 561) 
* y_train.txt - Complete load
* Subject_test - Complete load

  B) Name standardization
    make.names() was seperately used to standardize the names and standardized names were used for data frame columns
    
  C) Added acitivity description  
Created additional dataframe to create activity id, this is good to have especially for sorting
since sorting by description will not have intended results if the activity sequence is to be maintained
in final output   

  D) Combined the activity id and activity description   
  
  E) Added column names for subject data frame

  F) Combined all dataframes, this is the training dataframe set

### 3. Combined test and training data set
  The test data set and training data set are combined together
  
### 4. Prepare tidy data with average of each variable for each activity and subject   
  The data set was grouped by Subject_Id,Activity_Id,Activity_desc and mean was calculated for all the measured variables
  
### 5. Export the complete tidy set
  Completed data set was exported using write.table. The output file contains 180 rows 
  (30 Subject_Id * 6 Activities).   
  The total number of columns are 89   
  ( Subject_Id  
    Activity_Id  
    Activity_desc  
    Average of mean and std deviation variables (86 columns)  
  )  
  To read this data one can use following code  

  read_df <- function()  {  

  setwd("C:\\projects\\Data Science\\Data Cleansing\\Project")  
  output_file_tidy <- ".\\data\\output\\tidy_data.txt"  
  df <- read.table(output_file_tidy, header = TRUE)  
  View(df)  
}

read_df()

### 6. CodeBook.md accompanied describes the tidy dataset


   


