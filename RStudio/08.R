x <- rep(1,times=5)
x

y <- rep('a', 3)
y

z <- rep(x, 2)
z

x <- 1:3

t <- rep(x, each=5) #s�ral� �ekilde 5 tekrar eder
t

#Selection Control

x<-10

if(x>10){
  print("10dan b�y�k")
}else if(x<10){
  print("10dan k���k")
}else{
  print("10 a e�it")
}

#ifelse fonksiyonu
x<-16
ifelse(x>15, "15ten b�y�k", "15ten k���k")

x<-16
ifelse(x%%2==0, "�ift say�", "tek say�")

#for d�ng�leri
x <- 0:10
for(i in x){
  print(i)
}

y <- letters
for(i in y){
  print(i)
}

x <- y[1:5]
x

#while d�ng�leri
i<-1
while(i<=5){
  print(i)
  i<-i+1
}

#repeat d�ng�leri
i<-1
repeat{#bu i�lem s�rekli devam edilir
  print(i)
  if(i>5)
    break
  i <- i + 1
}

#break 
for(i in 1:10){
  if(i%%2==1)
    next
  print(i)
  if(i==8)
    break
}
