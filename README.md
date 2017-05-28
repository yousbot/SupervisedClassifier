# Supervised Learning Classification Algorithms

Supervised classification algorithms, are a set of computational methods to classify a line depending on a whole big set of data given in input. Implemented algorithms in the package are : 

  - ID3 ( binary input ) 
  - Naive bayes classifier 
  - KNN

# Steps of use 

  - Extract the package to the root of your current project.
Call the specified package in your code with :
```sh
 source("./KNN_Launch.R")  
```
```sh
 source("./ID3_Launch.R")  
```
```sh
 source("./NBc_Launch.R")
```
  - Then, you can call the functions inside your code. The functions doesn't return any value, but you can use the global variables. Check the note that appears.
 
    Call the function with :
```sh
KNN ( classified_data_path = "./KNN/Data/KNN_Sample_Data.xlsx", 
     unclassified_data_path = "./KNN/Data/KNN_Sample_Unclassfied_Data.xlsx",
     k = 3 )
```
or 

```sh
ID3 ( input = "./ID3/Data/Health_DataMining_Sample_Data.xlsx" )
```
or 
```sh
NBc ( classified_data_path = "./NBc/Data/NB_Sample_Data.xlsx",
      unclassfied_data_path = "./NBc/Data/NB_Sample_Unclassfied_Data.xlsx" )
```

# Infos about the package
* Author,  Youssef Sbai idrissi
* Maintainer, Youssef Sbai Idrissi
* Date, 22 April 2017
* Version, 0.1.0
* Status, Open to contribution

