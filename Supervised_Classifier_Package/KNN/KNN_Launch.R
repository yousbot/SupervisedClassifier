


KNN <- function(classified_data_path, unclassified_data_path, k)
{
  
  library(xlsx)
  library(openxlsx)
  
  library(XLConnect)
  library(XLConnectJars)
  library(plyr)
  
  options(java.parameters = "- Xmx1024m")
  
  
  
  
  assign('data', read.xlsx(classified_data_path), envir = .GlobalEnv)
  assign('x', read.xlsx(unclassified_data_path), envir = .GlobalEnv)
  assign('k', k, envir = .GlobalEnv)
  
  
  
  #data <- read.xlsx("C:/Users/HP/Documents/KNN/KNN_Sample_Data.xlsx")
  #data <- read.xlsx("C:/Users/HP/Documents/KNN/KNN_Sample_Data_2.xlsx")
  
  
  #x <- read.xlsx("C:/Users/HP/Documents/KNN/KNN_Sample_Unclassfied_Data.xlsx")
  #x <- read.xlsx("C:/Users/HP/Documents/KNN/KNN_Sample_Unclassfied_Data_2.xlsx")
  
  source("./KNN_Core.R")
  
  cat("\n\n\n")
  cat("NOTE  : ","\n\n") 
  cat("1. Access your initial data                         : data","\n")
  cat("2. Access the new version of your unclassified data : x","\n")
  cat("3. See your decisions in the KNN/KNN_After_Classification_Data.xlsx file","\n\n\n")
  
  cat(" Do the 3 by yourself. Copy the code from the ID3_Core. ", "\n\n")
  
}