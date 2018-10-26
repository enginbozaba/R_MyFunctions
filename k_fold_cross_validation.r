

k_fold_cross_validation <- function(listSize,k){
  
  ind_list <- c(1:listSize)
  
  rand_ind <- sample(ind_list)
  
  len_row  <-length(ind_list)/k

  len_row <- as.integer(len_row)
  
  missing  <- 0 
  if (len_row*k != length(ind_list)) # Tam bölünme 
    missing  <-length(ind_list) -  len_row*k
 
  
  
  matris <-matrix(NA, nrow=k,ncol=len_row)
  for (i in 1:k){

    Start <-((i-1)*len_row)+1 
    
    End   <- (i)*len_row
 
    matris[i,] <- rand_ind[Start:End]
    
    if (i==k && missing !=0){
    
      print(rand_ind)
      missing_ind <- c(rand_ind[length(rand_ind):(length(rand_ind)-missing +1)])
      print(missing_ind)
 
    }
    
    
  }
  return(matris)
  
}

k_fold_cross_validation(55,5)



'''
k_fold_cross_validation(55,5)
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
[1,]   45    8   44   29   34   20   17   42   28    16    31
[2,]   46   49   41   52   22   43   18   47   33    55    12
[3,]   21   53   36   38   35   23   27   15   30    26    39
[4,]    5   54    4   37   19   40    7   50   14     9     6
[5,]   32    3   13   24   48    1   11    2   10    25    51


k_fold_cross_validation(58,5)
# print(rand_ind)
[1] 27 22 43 46  9 21 57 26 41 24 14  8  5 35  2 13 31 28 20 49 19 58
[23] 45  4 56 52 30  6 38 10 39 48 34 40 17 50  1 16 23 42 54 37 18 44
[45] 55 53 33 25 29 12 51  7  3 36 47 11 32 15
# print(missing_ind)
[1] 15 32 11
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
[1,]   27   22   43   46    9   21   57   26   41    24    14
[2,]    8    5   35    2   13   31   28   20   49    19    58
[3,]   45    4   56   52   30    6   38   10   39    48    34
[4,]   40   17   50    1   16   23   42   54   37    18    44
[5,]   55   53   33   25   29   12   51    7    3    36    47
'''
