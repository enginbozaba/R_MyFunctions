Covariance <- function(a,b){
  a <- a- mean(a)
  b <- b-mean(b)
  return( sum(a*b)/(length(a)-1) )
  
}

'''
Example :
Covariance(test_y,prediction)
[1] 0.8953543
'''
