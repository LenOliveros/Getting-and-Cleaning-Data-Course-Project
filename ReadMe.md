
# GETTING AND CLEANING DATA README


In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

Why? well, this data belongs to a group of data scientists in Genoa, Italy.

They took 30 volunteers within an age bracket of 19-48 years and each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist and obtained o lot of data.

The problem here was to understand the data because it is difficult to read.

To make analisys is necessary that the data is tidy, so that was the goal (to obtain a tidy data set).


To obtain a tidy data set, it was necessary to write a code capable to do what we need.

The code works this way:

1. Read the data files.
2. Compile the data by merging the files.
3. Extracts the common measurements to make analysis.
4. Converts the activity column into factor.
5. Label the variable names to make them understandable.
6. Create groups and summerise the data to give clear information.
7. Writes the file tidy_data.txt.