Dataset "filtered"

Dataset contains altered data from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, where a complete description of the variables 
can be found.

This dataset contains the following variables:
subjectid - Identificator of the subject
            1-30
activityid - Identificator of the activity
            1-6
activity - Corresponding Activity name
            WALKING            
            WALKING_UPSTAIRS   
            WALKING_DOWNSTAIRS 
            SITTING           
            STANDING           
            LAYING  
The following variables with all combinations of coordinates X,Y,Z and stdev and mean. All the values are in the interval from -1 to 1 
including:            
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
origin - The origin of the data
          train
          test
          
The grouped dataset contains the same variables, but the values except the descriptive ones (activity, activityid, subjectid)
are average values for the activity and subject.



