normalization<- function(data,method){
  if ("sum_row"==method){
    data<-data/rowSums(data)
  }
  return(data)
}
'''

> data
     [,1] [,2]
[1,]   10    4
[2,]    5    7
[3,]    9    1
[4,]    8    2
[5,]    3    6

> normalization(data,"sum_row")
          [,1]      [,2]
[1,] 0.7142857 0.2857143
[2,] 0.4166667 0.5833333
[3,] 0.9000000 0.1000000
[4,] 0.8000000 0.2000000
[5,] 0.3333333 0.6666667
'''
