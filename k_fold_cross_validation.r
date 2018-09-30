
k_fold <- function(listSize,k){
  
   ind_list  <- c(1:listSize)
   
   rand_ind <- sample(ind_list)

   len_row=length(ind_list)/k
   
   matris <-matrix(NA, nrow=k,ncol=len_row)
   for (i in 1:k) {
     
     Start=((i-1)*len_row)+1 
    
     End =(i)*len_row  
     
     matris[i,] <- rand_ind[Start:End]
   }
   return(matris)
   
}


'''
> k_fold(10,2)
     [,1] [,2] [,3] [,4] [,5]
[1,]    4    9    8    1    3
[2,]    2    6    5    7   10
> k_fold(10,5)
      [,1] [,2]
[1,]    4    5
[2,]    7    8
[3,]    6    3
[4,]   10    9
[5,]    1    2
'''
