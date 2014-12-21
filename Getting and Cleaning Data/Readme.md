* File-Name:      Readme.md
* Date:           21.12.2014
* Author:         Federico Carlés
* Email:          fedecarles@gmail.com                                      

## Overview
The script **run_analysis.R** uses raw data from the *Human Activity Recognition Using Smartphones Data Set* [1] to create a tidy data set that includes the average measuremeants of the means and standard deviations of data registered by the phone's accelerometer and gyroscope on 30 subjects performing 6 types of activities. For more details on the data and variables, please read the Codebook. 

At a high level the code performs the steps below:

1. Reads the raw data files.
2. Combines and transform the data sets to create a single one.
3. Returns the tidy data set of average measurments for the selected variables.

## Replication
Steps to replicate the analysis:

1. Download the raw data from ([http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip])
2. Extract the data into your R working directory.
3. You will need the *"dplyr"* package.If you don't have it installed run `install.packages("dplyr")`

## Technical specifications
The analisys was performed with the following system and software:

* Linux Mint 17 (Qiana)
* R version 3.1.2 (2014-10-31)
* Rstudio version 0.98.978

[1] *Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*
