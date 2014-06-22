**CodeBook.md**
Code book for run_analysis.R
==============================================

Raw Data Source
----------------------------------
### URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#### Download Date:
June 8, 2014 : 21:54 EDT
#### Download Method:
Fire Fox Browser. Unzip through local Windows 7 Utility. All files placed into a single direcctory.
### Raw Data Location:  
__IMPORTANT__ : All Data Files moved to single working directory

G:/R_WorkingDirectory.d/GettingCleaningData.d/Project.d/getdata_projectfiles_UCI_HAR_Dataset.d/UCI_HAR_Dataset.d/commonArea.d

### Raw Data Source File Names:
* activity_labels.txt; 6 X 2; Maps Activity (Integer) to Activity Name (eg. WALKING, RUNNING,etc..)
* y_test.txt; 2947 X 1; Maps Activity(Integer) to Test Records
* y_train.txt; 7352 X 1;Maps Activity(Integer) to Training Records
* subject_test.txt; 2947 X 1; Maps Subject(Integer) to Test Records; 
* subject_train.txt; 7352 X 1; Maps Subject(Integer) tp Test Records;
* features.txt; 561 X 2; Maps Column Number to Feature Name for the files x_train.txt and x_test.txt; First Col is RowNumber of the File, Second Column Feature Name
* x_train.txt; 7352 X 561; Feature Values Measured for each training record
* x_test.txt; 2947 X 561; Feature Values Measured for each test record

### Informational Files that Came with the Data Set
* __activity_labels.txt__ : Mapping of Activity Name to Activity Number
* __features.txt__ : : Mapping of the 561 feature names to Feature Column Number
* __features_info.txt__ : Explaination and listing of the 59 fundamental Feature Measurements
* __README.txt__ : Explaination and Description of the creation of the raw data set

#### Raw Files Not used in the analysis
body_acc_x_train.txt,body_acc_y_train.txt 128 7352,body_acc_z_train.txt 128 7352,body_gyro_x_train.txt 128 7352,body_gyro_y_train.txt 128 7352",body_gyro_z_train.txt,total_acc_x_train.txt,total_acc_y_train.txt,total_acc_z_train.txt 128 7352"


run_analysis.R
----------------------------
### Variables and their Descriptions
1.Working Directory Information Variables  
  * driveLtr: Letter of the ThumbDrive Memory Device
  * subDir: Directory in the thumbdrive
  * workingDir: Concateneated Value of the above to get the _Working_ Directory
   
2.Remaining Variables Listed Alphabetically
  * __activity__ : intermediate variable used for indexing in last for loop of the code
  * __activity_labels__ : Integer to Activity Mapping e.g. "WALKING","STANDING", etc.
  * __activityOf()__ : Function, Converts Activity Integer 1:6 to an activity as text
  * __featureColumnNumberS__ : Lists the selected column numbers representing features given as a mean or standard deviation. Use for subsetting the original data set.
  * __featureNameS__ : Names of the Columns represented by featureColumnNuberS 
  * __featureS__ : The complete set of all measured Features
  * __intermediate_Frame__ : The data frame representing the original merged data set (training and test) prior to further subsetting by features representing means and standard deviations.
  * __subject__ : index by subject (1:30) in the double for loop of the code
  * __subject_Frame__ : subject column for the merged data set (training and test)
  * __subject_labels__ : seq(1:30) representing the 30 subjects/participants in the statistics. Used for iterating in the for loop.
  * __subject_testValueS__ : mapping of subject(integer) to record the in X_test.txt file
  * __subject_trainValueS__: mapping of subject(integer) to record the in X_train.txt file
  * __WW__ : matrix subset of the intermediate data frame (subset by feature and subject)
  * __WW_mean__ : Mean of all the features in WW (equivalent to mean of the columns in WW)
  * __X__: Merged Data Set (Training and Test) of 561 Features and 10299 Records
  * __X_redux__ : Merged Data Set with mean, Mean and std Features 10299 X 86
  * __x_test__ : the complete data set ingested from X_test.txt
  * __x_train__ : the complete data set ingested from X_train.txt
  * __y_Frame__ : maps the activity by name to all records of the merged data set
  * __Y_row__ : A single row containing the means of the features for a given (activityXsubject)
  * __y_testFrame__ : Mapping of Activity (integer) to record in the test set
  * __y_testNameS__ : Mapping of Activity (name) to record in the test set
  * __y_trainFrame__ : Mapping of Activity (integer) to record in the training set
  * __y_trainNameS__ : Mapping of Activity (name) to record in the training set
  * __Z__ : Final Frame : means of feature(mean and std) by activity X subject

### High Level Steps in the Analysis
1. Establish working directory where Raw Data Files are Located  
__Variables__
   * driveLtr: Letter of the ThumbDrive Memory Device
   * subDir: Directory in the thumbdrive
   * workingDir: Concateneated Value of the above to get the _Working_ Directory
2. Establish Activities by Name  mapped to the merged test and training data records  
__Variables__
   * activity_labels 
   * activityOf() : _Function_
   * y_testNameS
   * y_trainNameS
   * y_trainFrame
   * y_testFrame
   * y_Frame

3. Map the subject to the merged records  
__Variables__
   * subject_trainValueS
   * subject_testValueS
   * subject_Frame


4. Harvest the Column Numbers reprenting means and standard deviations of features. Map these column numbers to their column names.  
__Variables__
   * featureS
   * featureColumnNumberS
   * featureNameS

5. Perform a Merge on the measured feature Sets in x_train.txt and x_test.txt. Harvest the particular colmns indicating measured feature means and standard deviations as listed in _featureColumnNumberS_.  
__Variables__
   * x_test
   * x_train
   * X
   * X_redux

6. Store this intermediate data on Disk Samples of (Activity, Subject, Mean and Std Features)  
  *__Variables__  
   *intermediate_Frame  

  *__Output Files__  
   *HAR_002_Intermediate.csv

7. Generate Final Frame activity,subject,Means(of Feature)  
  *__Variables__  
   *subject_labels  
   *WW  
   *WW_mean  
   *Y_row  
   *Y  
   *Z  
   
  *__Output Files__   
   *HAR_002_AvgByFeatureAndSubject.csv
   





