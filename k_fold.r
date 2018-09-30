
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
