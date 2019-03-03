---
title: "CodeBook.md"
author: "Len Oliveros"
date: "2 de marzo de 2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(
	echo = TRUE,
	message = TRUE,
	warning = TRUE
)
```

# Code Book 

This code book try to explain the meaning of the variables contained in the file tidy_data.txt.

As we saw in the Readme file, we had 30 persons who was part of the experiment and we obtained several measures of each one of then.

So we will have two tipe of varibables, the identifiers variables and the measurements variables.

# Identifiers

- subject
- activity

Where "subject" is the person who was part of the experiment,
and "activity" is the type of activity performed when the corresponding measurements were taken.

## Measurements

### timeBodyAccelerometer-Mean()-X
### timeBodyAccelerometer-Mean()-Y
### timeBodyAccelerometer-Mean()-Z
 
### timeBodyAccelerometer-StandardDeviation()-X
### timeBodyAccelerometer-StandardDeviation()-Y
### timeBodyAccelerometer-StandardDeviation()-Z
 
### timeGravityAccelerometer-Mean()-X
### timeGravityAccelerometer-Mean()-Y
### timeGravityAccelerometer-Mean()-Z
 
### timeGravityAccelerometer-StandardDeviation()-X
### timeGravityAccelerometer-StandardDeviation()-Y
### timeGravityAccelerometer-StandardDeviation()-Z
 
### timeBodyAccelerometerJerk-Mean()-X
### timeBodyAccelerometerJerk-Mean()-Y
### timeBodyAccelerometerJerk-Mean()-Z
 
### timeBodyAccelerometerJerk-StandardDeviation()-X
### timeBodyAccelerometerJerk-StandardDeviation()-Y
### timeBodyAccelerometerJerk-StandardDeviation()-Z
 
### timeBodyGyroscope-Mean()-X
### timeBodyGyroscope-Mean()-Y
### timeBodyGyroscope-Mean()-Z
 
### timeBodyGyroscope-StandardDeviation()-X
### timeBodyGyroscope-StandardDeviation()-Y
### timeBodyGyroscope-StandardDeviation()-Z
 
### timeBodyGyroscopeJerk-Mean()-X
### timeBodyGyroscopeJerk-Mean()-Y
### timeBodyGyroscopeJerk-Mean()-Z
 
### timeBodyGyroscopeJerk-StandardDeviation()-X
### timeBodyGyroscopeJerk-StandardDeviation()-Y
### timeBodyGyroscopeJerk-StandardDeviation()-Z
 
### timeBodyAccelerometerMagnitude-Mean()
### timeBodyAccelerometerMagnitude-StandardDeviation()
 
### timeGravityAccelerometerMagnitude-Mean()
### timeGravityAccelerometerMagnitude-StandardDeviation()
 
### timeBodyAccelerometerJerkMagnitude-Mean()
### timeBodyAccelerometerJerkMagnitude-StandardDeviation()
 
### timeBodyGyroscopeMagnitude-Mean()
### timeBodyGyroscopeMagnitude-StandardDeviation()
 
### timeBodyGyroscopeJerkMagnitude-Mean()
### timeBodyGyroscopeJerkMagnitude-StandardDeviation()
 
### frequencyBodyAccelerometer-Mean()-X
### frequencyBodyAccelerometer-Mean()-Y
### frequencyBodyAccelerometer-Mean()-Z
 
### frequencyBodyAccelerometer-StandardDeviation()-X
### frequencyBodyAccelerometer-StandardDeviation()-Y
### frequencyBodyAccelerometer-StandardDeviation()-Z
 
### frequencyBodyAccelerometer-MeanFrequency()-X
### frequencyBodyAccelerometer-MeanFrequency()-Y
### frequencyBodyAccelerometer-MeanFrequency()-Z
 
### frequencyBodyAccelerometerJerk-Mean()-X
### frequencyBodyAccelerometerJerk-Mean()-Y
### frequencyBodyAccelerometerJerk-Mean()-Z
 
### frequencyBodyAccelerometerJerk-StandardDeviation()-X
### frequencyBodyAccelerometerJerk-StandardDeviation()-Y
### frequencyBodyAccelerometerJerk-StandardDeviation()-Z
 
### frequencyBodyAccelerometerJerk-MeanFrequency()-X
### frequencyBodyAccelerometerJerk-MeanFrequency()-Y
### frequencyBodyAccelerometerJerk-MeanFrequency()-Z
 
### frequencyBodyGyroscope-Mean()-X
### frequencyBodyGyroscope-Mean()-Y
### frequencyBodyGyroscope-Mean()-Z
 
### frequencyBodyGyroscope-StandardDeviation()-X
### frequencyBodyGyroscope-StandardDeviation()-Y
### frequencyBodyGyroscope-StandardDeviation()-Z
 
### frequencyBodyGyroscope-MeanFrequency()-X
### frequencyBodyGyroscope-MeanFrequency()-Y
### frequencyBodyGyroscope-MeanFrequency()-Z
 
### frequencyBodyAccelerometerMagnitude-Mean()
### frequencyBodyAccelerometerMagnitude-StandardDeviation()
### frequencyBodyAccelerometerMagnitude-MeanFrequency()
 
### frequencyBodyAccelerometerJerkMagnitude-Mean()
### frequencyBodyAccelerometerJerkMagnitude-StandardDeviation()
### frequencyBodyAccelerometerJerkMagnitude-MeanFrequency()
 
### frequencyBodyGyroscopeMagnitude-Mean()
### frequencyBodyGyroscopeMagnitude-StandardDeviation()
### frequencyBodyGyroscopeMagnitude-MeanFrequency()
 
### frequencyBodyGyroscopeJerkMagnitude-Mean()
### frequencyBodyGyroscopeJerkMagnitude-StandardDeviation()
### frequencyBodyGyroscopeJerkMagnitude-MeanFrequency()


Where every time you see the word "frequency" it refers to frequency domain signals.
Every time you see the word "time" it refers to the linear acceleration and angular velocity that were derived in time to obtain Jerk signals.

These measurements were taken in a 3 dimentional space, so when you see the letters X,Y and Z, it means the measurement in one axis of the 3 dimentional space.

# Activity Labels

- WALKING: subject was walking during the test
- WALKING_UPSTAIRS: subject was walking up a staircase during the test
- WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
- SITTING: subject was sitting during the test
- STANDING: subject was standing during the test
- LAYING: subject was laying down during the test

