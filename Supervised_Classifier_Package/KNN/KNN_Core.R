



Px_result <- vector()
major_result <- vector()
test <- vector()
knn_min_set <- vector()




p__ <- 1
for(p__ in 1:nrow(x))
{
  Elite <- 0
  
  class_table <- table(data['Classe'])
  Px_result <- vector()
  
  for(i in 1:nrow(data))
  {
    P_x_Up <- 0
    P_x_Down <- 0
    #table_xi <- data[data['Classe']==names(class_table[k]),]
    
    for(j in 1:(ncol(data)-1))
    {
      if(abs(x[p__,j]-data[i,j]) == 1 )
      {
        P_x_Up <- P_x_Up + 1
        P_x_Down <- P_x_Down + 1
      }else{
        if((x[p__,j]==1 && data[i,j]==1))
        {
          P_x_Down <- P_x_Down + 1
        }
      }
    }
    nam <- paste('', i, sep = "")
    Px_result[nam] <- P_x_Up/P_x_Down
    #test <- c(test, P_x_Up)
    #test <- c(test, P_x_Down)
    
  }
  
  
  # Now we get the min values ! 
  #cat("\n","Enter the K for the KNN : ","\n") # 
  #cat(" Note : It should be a pair number ...  ","\n")
  #cat("Your number : ") 
  #k <- readline(prompt="Enter number : ")  
   
  
  
  # ------------------------------------------------------------------- 
  # IMPORTANT TO DETERMINE. THIS WILL INFLUANCE THE RESULT YOU'LL GET 
  # -------------------------------------------------------------------
  #
  #
            #  k <- 3
  #
  #
  #
  # Modify it depending on the precision you want.
  # -------------------------------------------------------------------
  
  
  for(i in 1:k)
  {
    knn_min_set[(names(Px_result[which.min(Px_result)]))] <- min(Px_result)
    Px_result <- Px_result[-which.min(Px_result)] 
    
  }
  
  vote <- vector()
 for(i in 1:length(knn_min_set))
 {
   s <- as.numeric(names(knn_min_set[i]))
   vote <- c(vote, data[['Classe']][[s]])
   
 }
  
  Elite <- table(vote)

  for(i in 1:length(Elite))
  {
    if(max(Elite)==Elite[[i]]) 
    {
      Elu <- names(Elite[i])
      break
    }
  }
  
  
  x$Classe[[p__]] <- Elu
  
    
  
 #major_result[p__] <- Px_result
}
    