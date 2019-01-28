#Lesson 1 
'''
ls() : objects list
rm(object_name) : rm() deletes object_name
sqrt(4) : 4^(1/2)

log computes logarithms, by default natural logarithms(base e), 
log10 computes common (i.e., base 10) 
logarithms, and log2 computes binary (i.e., base 2) logarithms. 
The general form log(x, base) computes logarithms with base base

exp()
abs(-12):12

'''

#Lesson 2 : Create and Work with Vectors and Matrices in R
'''
start:stop
c()
seq()
rep()

if two vectors are of the save length, 
we may add/subtract/mult/div corresponding elements
(x*y,y+x,...)

indexOne<-arr[1]
indexOne
noIndexOne <-  arr[-1]
noIndexOne

newArr <- arr[2:4]
newArrTwo <- arr[-(2:4)] #No 2. ,3. and 4. ind 

comparatorArr <- c(1,2,3,4)
comparatorArr[comparatorArr>2]
comparatorArr[comparatorArr>2 & comparatorArr<4]
comparatorArr[comparatorArr>2 | comparatorArr<4]


matris <- matrix(  rep(  seq(from=1,to=3,by=1) ,times=3) , nrow=3 ,byrow=TRUE)
matris
matris <- matrix(  rep(  seq(from=1,to=3,by=1) ,times=3) , nrow=3 ,byrow=FALSE)
matris

matris[1,1]
matris[c(1,2,3),1]
matris[,1]
matris[1,]
matris[-1,]
matris*10
matris+10
matris-41
matris/2


'''

a <- 5
a
startStopArr <- 1:10
startStopArr
vectorr <- c(1,2,7,8,7777)
vectorr
seqArr <- seq(from=1,to=7,by=0.5)
seqArr
repArr <- rep(1.789,times=3)
repArr
x <- c(1,2,3)
y <- c(1,20,300)
x+y
x-y
x*y
x/y
arr <- seq(from =2,to=10,by=2)
arr
indexOne<-arr[1]
indexOne
noIndexOne <-  arr[-1]
noIndexOne
newArr <- arr[2:4]
newArr
newArrTwo <- arr[-(2:4)] #No 2. ,3. and 4. ind 
newArrTwo

matris <- matrix(  rep(  seq(from=1,to=3,by=1) ,times=3) , nrow=3 ,byrow=TRUE)
matris
matris <- matrix(  rep(  seq(from=1,to=3,by=1) ,times=3) , nrow=3 ,byrow=FALSE)
matris

matris[1,1]
matris[c(1,2,3),1]
matris[,1]
matris[1,]
matris[-1,]
matris*10
matris+10
matris-41
matris/2

#Lesson 3 :
'''
help()
getwd()
dir():dosyaları listeler
dir.exists("aranacak_dosyanın_adını_yaz") : return TRUE ,FALSE
dir.create("olusacak_dosyanın_adını_yaz")
object.size("dosya_adı"):dosyanın_boyutunu_verir
ls():değişken list
rm():değişken silme
library() :kütüphane yükleme
typeof():değişkenin türünü verir
'''
#Lesson 4 :
'''
          Homojen_veri_tipi         Heterojen_veri_tipi
1d        Atomic vector             list
2d        Matrix                    Data frame
nd        Array

en çok kullanılan : Vektörler,Liste,Matris,Data Frame
Atomic Vektörler : character,numeric,integer(L ör:5L),logical,coöplex

                  Vektörler
Aynı tür:         Atomic vektör
Farklı tür:       List(generic vector)
Sıralı karakter:  Factor


complex e örnek 1+2i
liste e örnek list("engin",111,1+2i)
matrix e örnek matrix(data=1:9,nrow=3,ncol=3)
DataFrame e birden fazla veri tipi tutar , df<-data.frame(a=1:2,b=c("ali","bir")) 
 df$a , df$b
'''

#Lesson 5
'''
func_name <- function(arg1,arg2){
    ....
    return result
  }

'''

#Lesson 6:
'''
if ( kontrol1 ){
  ...
} else if( kontrol2 ){
  ...
}  else {
  ...
}
'''

#Lesson 7: For:R da pek önerilemz, apply önerilir
'''
for (value in start:stop){
    print(value)
}

paste() :yan yana vermeye yarar
paste("al",1)
[1] "al 1"

'''

#Lesson 8:while,break,next

'''
while(kosul){
  ....
}

next : continue ya karşılık gelir, başa sarar
'''

