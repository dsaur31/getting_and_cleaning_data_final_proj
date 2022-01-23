###Pull in data
Train_Features <- read.table("X_train.txt")
Train_Activity <- read.table("y_train.txt")
Test_Features <- read.table("X_test.txt")
Test_Activity <- read.table("y_test.txt")
Test_Subject <- read.table("subject_test.txt")
Train_Subject <- read.table("subject_train.txt")

###combine subject, activity, and features into individual tables
dSub <- rbind(Train_Subject, Test_Subject)
dAct <- rbind(Train_Activity, Test_Activity)
dFeat<- rbind(Train_Features, Test_Features)

###clean names
names(dSub) <- c("subject")
names(dAct) <- c("activity")
dataFeaturesNames <- read.table("features.txt",head=FALSE)
names(dFeat) <- dataFeaturesNames$V2


###combine the data
dataCombine <- cbind(dSub, dAct)
dataset3 <- cbind(dFeat, dataCombine)

###head(dataFeaturesNames)

###extract required data into new dataset: dataset3
sub_FeaturesNames <- dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames <- c(as.character(sub_FeaturesNames), "subject", "activity" )
dataset3 <- subset(dataset3,select=selectedNames)
###str(dataset3)

###bring in activity labels
alabels <- read.table("activity_labels.txt")

###factor activity labels with activity data
dataset3$activity <- factor(dataset3$activity, labels = alabels$V2)

###clean data labels based on prefixes
names(dataset3) <- gsub("^t", "time", names(dataset3))
names(dataset3) <- gsub("^f", "frequency", names(dataset3))
names(dataset3) <- gsub("Acc", "Accelerometer", names(dataset3))
names(dataset3) <- gsub("Gyro", "Gyroscope", names(dataset3))
names(dataset3) <- gsub("Mag", "Magnitude", names(dataset3))
names(dataset3) <- gsub("BodyBody", "Body", names(dataset3))

names(dataset3)


###creates an independent tidy data set with the average of each variable for
###each activity and each subject
library(plyr);
data_edit <- aggregate(. ~subject + activity, dataset3, mean)
data_edit
data_edit <- data_edit[order(data_edit$subject,data_edit$activity),]
write.table(data_edit, file = "final_data.txt",row.name=FALSE)


