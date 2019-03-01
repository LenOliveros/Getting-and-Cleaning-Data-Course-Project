getwd()
setwd("C:/Users/DANTEROUS-/Documents/LEN OLIVEROS/Programa especializado Data Scientist coursera/3.Getting and cleaning Data/final project")

ruta <- "UCI HAR Dataset"


#BASE - READING THE DATA
#TRAIN
subject_train <- read.table(file.path(ruta, "train","subject_train.txt" ))
X_train <- read.table(file.path(ruta, "train","X_train.txt" ))
y_train <- read.table(file.path(ruta, "train","y_train.txt" ))


#TEST
subject_test <- read.table(file.path(ruta, "test","subject_test.txt" ))
X_test <- read.table(file.path(ruta, "test","X_test.txt" ))
y_test <- read.table(file.path(ruta, "test","y_test.txt" ))

#FEATURES
features <- read.table(file.path(ruta,"features.txt"),as.is = TRUE)

#ACTIVITIES
activity_labels <- read.table(file.path(ruta,"activity_labels.txt" ))
colnames(activity_labels) <- c("Idact","labelact")


#STEP 1 - Merges the training and the test sets to create one data set.
Human_Activity <- rbind(cbind(subject_train,X_train,y_train),cbind(subject_test,X_test,y_test))

View(Human_Activity)

nom_feat <- features[, 2]
colnames(Human_Activity) <- c("subject", nom_feat, "activity")

names(Human_Activity)


#STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

mantener <- grepl("subject|activity|mean|std",colnames(Human_Activity))

Human_Activity1 <- Human_Activity[,mantener]
View(Human_Activity1)
ncol(Human_Activity1)


#STEP 3 - Uses descriptive activity names to name the activities in the data set

Human_Activity1$activity <- factor(Human_Activity1$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

View(Human_Activity1)


#STEP 4 - Appropriately labels the data set with descriptive variable names.


humanactivitycols <- colnames(Human_Activity1)

humanactivitycols <- gsub("^f","frequency",humanactivitycols)
humanactivitycols <- gsub("^t","time",humanactivitycols)
humanactivitycols <- gsub("Acc","Accelerometer",humanactivitycols)
humanactivitycols <- gsub("Gyro","Gyroscope",humanactivitycols)
humanactivitycols <- gsub("Mag","Magnitude",humanactivitycols)
humanactivitycols <- gsub("Freq","Frequency",humanactivitycols)
humanactivitycols <- gsub("mean","Mean",humanactivitycols)
humanactivitycols <- gsub("std","StandardDeviation",humanactivitycols)
humanactivitycols <- gsub("BodyBody","Body",humanactivitycols)


colnames(Human_Activity1) <- humanactivitycols


#STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Human_Activity2 <- Human_Activity1 %>% group_by(subject,activity) %>% summarise_all(mean)
View(Human_Activity2)

#EXPORTING THE TIDY DATA
write.table(Human_Activity2, "tidy_data.txt", row.names = FALSE,quote = FALSE)

