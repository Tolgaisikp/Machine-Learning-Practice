#Matching Operator
x<-c(10,20,30,40,50,60,70,80)
y<-20

y %in% x #x vekt�r�nde var m� sorgusu

y<-c(20,50,55)

y %in% x

#Vector Arithmetics

x + 2
x - 2
x * 2
x / 2

x*x

sqrt(x)

y<-c(5,1,4)

x+y#ikisinin uzunlu�u e�it olmad���ndan hata verir

#Vector Methods
sum(x)#vector i�indekileri toplar

prod(x)

rev(x)#ters �ekilde yazd�r�r

sort(x)#s�ralar

sort(x, decreasing = T)#ters s�ralar

x<-c(10,1,8)
y<-c(8,9,10)

x%*%y#matris �arp�m�
crossprod(x,y)#ayn� i�lem

x%o%y#sat�rlar ile s�tunlar �arp�m�
tcrossprod(x,y)

#Matrix Coercion
x<-c("tolga",FALSE,12,37.5)
x#matrislerde tek bir �e�it de�i�ken olmas� zorunlulu�undan hepsini stringe zorluyor

y<-c(10, TRUE)
y

x<-0:5
x
class(x)

as.logical(x)#0 false di�erleri true oldu
as.character(x)#karaktere d�n��t�rd�

#Matrislerde e�itlik ifadeleri
x<-c(10,45,55,12,20,35)
x

y<- x > 30 & x < 50
y

x[y]

x<-c(10,45,55,12,20,35)
y<-c(20,32,5,10,8,3)

x<y

which(x>30)#bize 30dan b�y�klerin indexini s�yler

x[which(x>30)]


#Factors (Kategorik verileri temsil etmek i�in kullan�l�r)
x <- factor(c('female','male','male','male','female'))
x#2level belirler female:1 male:2

table(x)

