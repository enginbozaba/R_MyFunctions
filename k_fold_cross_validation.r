k_fold_cross_validation <- function(listSize,k,i,tip){
  
  set.seed(0) # Tohum değerini içeri yazmamız lazımmış , dışarı yazdığımızda fonksiyon içine etki etmiyormuş
  
  ind_list <- c(1:listSize)
  
  rand_ind <- sample(ind_list)
  
  len_row  <-length(ind_list)/k
  
  len_row <- as.integer(len_row)
  
  missing  <- 0 
  if (len_row*k != length(ind_list)) # Tam bölünme 
    missing  <-length(ind_list) -  len_row*k
  

  Start <-((i-1)*len_row)+1 
    
  End   <- (i)*len_row
    
  ind<- rand_ind[Start:End]
  print(rand_ind)
    
  if(tip=="train"){
    
    ind<- rand_ind[-c(Start:End)]
    
    if (k==i)
      ind <- ind[(length(ind)-missing):1]
      
    
  }
  
  
  if (i==k && missing !=0 && tip!="train"){
      
      #print(rand_ind)
      missing_ind <- c(rand_ind[length(rand_ind):(length(rand_ind)-missing +1)])
      #print(missing_ind)
      ind <- c(ind,missing_ind)
      
    }
    
    
  
  return(ind)
  
}



> k_fold_cross_validation(listSize =12,k=5,i=5,"test")
 [1] 11  3  4  6  8  2  9  5 12  7  1 10 #İnd List
[1] 12  7 10  1#gerekli olan
> 
> 
> k_fold_cross_validation(listSize =12,k=5,i=5,"train")
 [1] 11  3  4  6  8  2  9  5 12  7  1 10#İnd List
[1]  5  9  2  8  6  4  3 11 #istenen
> 
