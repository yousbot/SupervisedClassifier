library(xlsx)
library(openxlsx)
library(XLConnect)
library(XLConnectJars)
library(plyr)

Px_result <- vector()
major_result <- vector()

test <- vector()

for( p__ in 1:nrow(x))
{
  Elite <- 0
  
  class_table <- table(data['Classe'])
  for(k in 1:length(class_table))
  {
    P_x_ci <- 1
    table_xi <- data[data['Classe']==names(class_table[k]),]
    
    for( i in 1:(length(data)-1))
    {
      P_x_ci <- P_x_ci * ( length(which(table_xi[i] == x[[i]][[p__]])) / class_table[[k]] )
      test <- c(test, length(which(table_xi[i] == x[[i]])) / class_table[[k]] )
    }
    
    P_x_ci <- P_x_ci * (table(data['Classe'])/nrow(data))[[k]]
    test <- c(test, (table(data['Classe'])/nrow(data))[[k]])
    Px_result[names(class_table[k])] <- P_x_ci
    
  }
  
  if(!all(Px_result==Px_result[1]))
  {
    index <- which.max(Px_result)
    major_result[names(Px_result[index])] <- max(Px_result)
  }else 
  {
    nam <- paste('Cannot Decide - ', p__, sep = "")
    major_result[nam] <- -1
  }
  
  x[['Classe']][p__] <- names(major_result[p__])
 
}


# Get the whole data from the major_result
# Check the X table and you'll see the new corrected data 

# write it down to an xlsx file, i'm tired to do it.