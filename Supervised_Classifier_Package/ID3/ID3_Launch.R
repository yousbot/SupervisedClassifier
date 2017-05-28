# Launch the test from here 

# NB : Make sure you've deleted all the previous CSV Files 
# NB : Make sure your sheet names is called : "TestSheet" on "Output.xlsx"
# NB : We will need only your data sheet

ID3 <- function(input)
{
  library(xlsx)
  library(openxlsx)
  
  library(XLConnect)
  library(XLConnectJars)
  
  assign('da', read.xlsx(input), envir = .GlobalEnv)
  source("./ID3_Core.R")
  
    cat("\n\n\n")
    cat("NOTE  : ","\n\n") 
    cat("1. Access your initial data       : da","\n")
    cat("2. Access to the tree of decision : general_list","\n")
    cat("3. See your decisions in the ID3/ID3/output.xlsx file","\n\n\n")
  
  
}



