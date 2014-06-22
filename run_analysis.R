#run_analysis.R

#########################################################################
#Establish working directory
driveLtr <- "G:" #Will Require Change Depending where implemented
subDir <- "/R_WorkingDirectory.d/GettingCleaningData.d/Project.d/getdata_projectfiles_UCI_HAR_Dataset.d/UCI_HAR_Dataset.d/commonArea.d"
workingDir <- paste0(driveLtr,subDir)

#########################################################################
activity_labels <- read.table("activity_labels.txt")

#Converts 'activity' integers to their text representation
activityOf <- function(n) {
as.character(activity_labels[n,"V2"])
}

#Generates a List of Activities as Text mapped to Test Record
y_testNameS <- sapply(read.table("y_test.txt"),activityOf)

#Generates a List of Activities as Text mapped to Training Record
y_trainNameS <- sapply(read.table("y_train.txt"),activityOf)

y_trainFrame <- as.data.frame(y_trainNameS)
y_testFrame <- as.data.frame(y_testNameS)

#Generates the Combined Activity Frame
y_Frame <- rbind(y_trainFrame,y_testFrame)
colnames(y_Frame) <- "Activity"

##########################################################################
subject_trainValueS <- read.table("subject_train.txt")
subject_testValueS <- read.table("subject_test.txt")

subject_Frame <- rbind(subject_trainValueS,subject_testValueS)
names(subject_Frame) <- "Subject"

###########################################################################

featureS <- read.table("features.txt")

#Obtain the Column Numbers with means and standard deviations
featureColumnNumberS <- c(grep("mean",featureS[,2]),
                          grep("std",featureS[,2]),
                          grep("Mean",featureS[,2]))
featureColumnNumberS <- sort(featureColumnNumberS)
featureNameS <- featureS[featureColumnNumberS,2]


###########################################################################
#Get Feature Values
x_test <- read.table("x_test.txt")
x_train <- read.table("x_train.txt")

X <- rbind(x_train,x_test)
X_redux <- X[,featureColumnNumberS]
colnames(X_redux) <- featureNameS

###########################################################################

intermediate_Frame <- cbind(y_Frame,subject_Frame,X_redux)
write.csv(intermediate_Frame,"HAR_002_Intermediate.csv")


##########################################################################
##Generate Final Frame activity,subject,Means(of Feature)

subject_labels <- seq(1:30)
for (activity in activity_labels[,2]){
  for (subject in subject_labels) {
    WW <- intermediate_Frame[intermediate_Frame$Subject == subject 
                             & intermediate_Frame$Activity==activity,c(3:88)]
    names(WW) <- NULL
    WW_mean <- apply(WW,2,mean)
    Y_row <- c(activity,subject,WW_mean)
    if(!exists("Y")) Y <- Y_row
    else Y <- rbind(Y,Y_row)
  }  
}
Z <- as.data.frame(Y) # class(Y) is "matrix"
rm(Y)
names(Z) <- names(intermediate_Frame)
rownames(Z) = NULL

write.csv(Z,"HAR_002_AvgByFeatureAndSubject.csv")

