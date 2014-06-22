README Code and Files for Processing the Raw Human Activity Recognition Data Sets
========================================================

__Data Set Input Files__
-------------------------
__IMPORTANT__ : All Data Files moved to  single working directory
-------------------------------------------
* __activity_labels.txt__; 6 X 2; Maps Activity (Integer) to Activity Name (eg. WALKING, RUNNING,etc..)
* __y_test.txt__; 2947 X 1; Maps Activity(Integer) to Test Records
* __y_train.txt__; 7352 X 1;Maps Activity(Integer) to Training Records
* __subject_test.txt__; 2947 X 1; Maps Subject(Integer) to Test Records; 
* __subject_train.txt__; 7352 X 1; Maps Subject(Integer) tp Test Records;
* __features.txt__; 561 X 2; Maps Column Number to Feature Name for the files x_train.txt and x_test.txt; First Col is RowNumber of the File, Second Column Feature Name
* __x_train.txt__; 7352 X 561; Feature Values Measured for each training record
* __x_test.txt__; 2947 X 561; Feature Values Measured for each test record

Other Informational Files (Comes with Data Set):
------------------------------------------
* activity_labels.txt
* features.txt
* features_info.txt
* README.txt


Processing Script:
-------------------------------------------
__run_analysis.R__  

Data Set Ouput Files  
-------------------------------------------
__HAR_002_AvgByFeatureAndSubject.csv__  
__Columns__: (Activity,Subject,86 Columns with mean and stdv features Values Averaged)
__Rows__: 1 Header followed by 180 rows/records
__Separator__: comma
__IMPORTANT__ Uploaded File has suffix .txt to enable uploading. Should this file be used the .txt suffix should be dropped to enable reading as a .csv file.  

86 Features averaged are the following which includes features such as __meanFreq()__:  
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()
* angle(tBodyAccMean,gravity)
* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean)
* angle(tBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)

