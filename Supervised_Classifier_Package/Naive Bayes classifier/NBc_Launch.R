

NBc <- function(classified_data_path, unclassfied_data_path)
{
  
  library(xlsx)
  library(openxlsx)
  
  library(XLConnect)
  library(XLConnectJars)
  library(plyr)
  
  assign('data', read.xlsx(classified_data_path), envir = .GlobalEnv)
  assign('x', read.xlsx(unclassfied_data_path), envir = .GlobalEnv)
  
 # data <- read.xlsx("./NBc/Data/NB_Sample_Data.xlsx")
 # x <- read.xlsx("./NBc/Data/NB_Sample_Unclassfied_Data.xlsx")
  
  source("./NBc_Core.R")
  
  cat("\n\n\n")
  cat("NOTE  : ","\n\n") 
  cat("1. Access your initial data                         : data","\n")
  cat("2. Access the new version of your unclassified data : x","\n")
  cat("3. See your decisions in the NBc/NB_After_Classification_Data.xlsx file","\n\n\n")
  
  cat(" Do the 3 by yourself. Copy the code from the ID3_Core. ", "\n\n")
  
}