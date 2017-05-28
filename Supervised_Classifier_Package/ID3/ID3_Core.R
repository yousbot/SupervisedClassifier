


# ----------------------------------------------------------
#
#                  Clear the output sheet 
#
# ----------------------------------------------------------

library(xlsx)
library(openxlsx)
output <- xlsx::read.xlsx("./ID3/output.xlsx", sheetName = "TestSheet")

if(length(output)!=0)
{
  
  # this is here to avoid libraries conflict
  library(XLConnect)
  library(XLConnectJars)
  library(xlsx)
  options(java.parameters = "- Xmx1024m")

  # -----------------------
  
  wb <- XLConnect::loadWorkbook("./ID3/output.xlsx", create=TRUE)
  size <- nrow(output)
    for(i in 1:ncol(output))
    {
      for(j in 1:size)
      {
 
          writeWorksheet (wb," ", sheet="TestSheet", startRow = j, startCol = i, rownames = FALSE, header = F)

      }
      
    }
  
  XLConnect::saveWorkbook(wb, "./ID3/output.xlsx")
  
  
}

#-----------------------------------------------------------

pa <- da

list_of_DFFF <- list()

list_of_DFFF <- c(list_of_DFFF, list(pa))


list_of_Decisions <- list()
pre_general_list <- list()
general_list <- list()
actual_list <- list()
general_list <- append(general_list, list(pa))
actual_list <- append(actual_list, list(pa))
general_decision <- list()




#----------------------------------- 
#    Begining of Classification 
#-----------------------------------



size_general_list <- length(general_list)
p__ <- 0

index_decision <- 0


while(p__ != size_general_list || p__ == 0)
{
    p__ <- p__ + 1
  
    if( p__ == 1 )
    {
      size <- 1;
    }else{
      size <- length(general_list[[p__]]);
                     
    }
    
  
  for(j__ in 1:size)
  {
    pa <- actual_list[[j__]]
    
    list_of_DF <- list()
    
    #----------------------------------
    # Enthropy function
    
    test <- vector()
    
    for (j in names(pa)) # loop through columns of our data
    { 
      j_index = which(names(pa)==j)
      res <- 0
      freq <- table(pa[[j]])
      for(s in names(freq)) 
      {
        index_ = which(names(freq)==s)
        p_ci <- freq[index_]/sum(freq)
        num_yes <- 0
        
        for(p in 1:length(pa[[j]]))
        {
         
          if((pa[[j]][p] == names(freq[index_])) & (pa$Classe[p] == 'yes'))
          {
            num_yes <- num_yes +  1
          }
        }
        I_S <- 0
        P <- num_yes/freq[index_]
        if(P != 1 & P != 0)
        {
          I_S <- -1*P*log2(P)-(1-P)*log2(1-P)
          
        }
        
        if ( is.na(res) ) 
        { 
          res = 0;
        }
        res = res +  I_S*p_ci
        
        
      }
      
      test <- c(test, res)
      
    }
    
    test <- head(test, -1)
    Elite <- which.min(test)
    
    
    arcs <- table(pa[Elite])
    
    
    for(i in names(arcs))
    {
      n <- paste(p__,j__)
      nam <- paste(n, i, sep = "_")
      assign(nam,data.frame(pa[pa[[names(pa[Elite])]] == i,]))
    }
    
    n <- paste(p__,j__)
    pp <- paste(n, "*")
    list(ls(pattern = pp))
    list_of_DF <- lapply(ls(pattern = pp), get)
   
    
    
    pre_general_list<- append(pre_general_list, list(list_of_DF))
    ss <- length(pre_general_list[[j__]])
    i <- 0
      while(i < ss && ss != 0)
      {
        i <- i + 1
      
      if( length(unique(pre_general_list[[j__]][[i]][[ncol(pre_general_list[[j__]][[i]])]]))==1)
      {
        #list_of_Decisions <- append(list_of_Decisions, list(pre_general_list[[1]][[i]][[ncol(pre_general_list[[1]][[i]])]]))
        list_of_Decisions <- append(list_of_Decisions, list(pre_general_list[[j__]][[i]]))
        pre_general_list[[j__]][[i]] <- NULL

      }
        
      ss <- length(pre_general_list[[j__]])
    }
      
        
         # pre_general_list[[j__]][[i]][Elite[[1]]] <- NULL

    
    
  }
    
  
  
  if( length(pre_general_list[[j__]]) > 0)
  { 
    general_list <- append(general_list, pre_general_list)
    general_decision <- append(general_decision, list_of_Decisions)
    
  }
  
  list_of_Decisions <- list()
  pre_general_list <- list()
  size_general_list <- length(general_list)
  
  if(p__ != length(general_list))
  {
    actual_list <- general_list[[p__+1]]
    
  }
  

}




# ------------------------ Decision Correction ------------------------------ 
 
general_list <- append(general_list, list(general_decision))



# -------------------- Cleaning Data Set ------------------------- 



major_decision_list <- list()


for(i in 2:length(general_list))
{

  if(length(general_list[[i]]) != 0)
  {
    for(j in 1:length(general_list[[i]]))
    {
      if(length(unique(general_list[[i]][[j]][[ncol(general_list[[i]][[j]])]]))==1)
      {
        # une boucle pour collectionner les decisions a prendre !! 
        
        decision_local <- list()
        
        for(q in 1:ncol(general_list[[i]][[j]]))
        {
          if(length(unique(general_list[[i]][[j]][[q]]))==1)
          {
            decision_local[[ colnames(general_list[[i]][[j]])[q] ]] <- general_list[[i]][[j]][[q]][[1]]
          }
        }
        
        major_decision_list <- append(major_decision_list, list(decision_local))
        
        
      }
    }
  }
 
}


options(java.parameters = "- Xmx1024m")

file <- "./ID3/output.xlsx"
wb <- XLConnect::loadWorkbook("./ID3/output.xlsx", create=TRUE)









curRow <- 1
if(length(major_decision_list) != 0)
{
  for(i in 1:length(major_decision_list))
  {
    p_df <- data.frame(major_decision_list[[i]])
    writeWorksheet (wb,p_df, sheet="TestSheet", startRow = curRow, rownames = FALSE, header = TRUE)
    curRow <- curRow + nrow(p_df) + 1
  }
}



XLConnect::saveWorkbook(wb, "./ID3/output.xlsx")

                                  


