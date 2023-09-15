# Supervised Learning Classification Algorithms

![Archived](https://img.shields.io/badge/Status-Archived-red) 

This package contains a set of computational methods for supervised classification. These algorithms classify a line of data based on a given dataset. Implemented algorithms in this package are:

- ID3 (binary input)
- Naive Bayes Classifier
- K-Nearest Neighbors (KNN)

## Table of Contents
- [Steps of Use](#steps-of-use)
- [Usage Examples](#usage-examples)
- [Package Information](#package-information)

---
## Steps of Use

1. **Extract the Package**:  
   Unzip and place the package in the root directory of your project.

2. **Include the Package in Your Code**:  
   Source the necessary files into your R script using the following commands:  
   ```R
   source("./KNN_Launch.R")
   source("./ID3_Launch.R")
   source("./NBc_Launch.R")
   ```

## Run the Functions:
You can call the algorithms within your code. Note that these functions do not return any values but populate global variables. Check the note that appears for more details.
Usage Examples
For KNN:
```R
KNN(classified_data_path = "./KNN/Data/KNN_Sample_Data.xlsx", 
    unclassified_data_path = "./KNN/Data/KNN_Sample_Unclassfied_Data.xlsx", 
    k = 3)
```
For ID3:
```R
Copy code
ID3(input = "./ID3/Data/Health_DataMining_Sample_Data.xlsx")
```
For Naive Bayes Classifier:
```R
NBc(classified_data_path = "./NBc/Data/NB_Sample_Data.xlsx", 
    unclassified_data_path = "./NBc/Data/NB_Sample_Unclassfied_Data.xlsx")
```
## Package Information
Author: Youssef Sbai Idrissi
Date: 22 April 2017
Version: 0.1.0
