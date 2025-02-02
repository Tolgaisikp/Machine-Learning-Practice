#dplyr package 
install.packages('dplyr')
library(dplyr)
mydata<-read.csv('murders.csv')
mydata
dim(mydata)
str(mydata)

mydata[c(1,3)]#1.ve 2.de�i�kenler g�sterildi

names(mydata)#b�t�n de�i�kenlerin adlar�


#dplyr select func

mysubdata<-select(mydata,region:murders)
mysubdata

mysubdata<-select(mydata,murders:region)#ters yazarsak tersten g�sterir
mysubdata


#dplyr filter func
mysubdata <- filter(mydata, murders>450)
mysubdata

mysubdatamurders <- select(mysubdata,state,murders,region)
mysubdatamurders


#dplyr arrange func
mysubdata<-arrange(mydata,population)#pop�lasyonu k���kten b�y��e s�ralar
mysubdata

head(mysubdata,5)
tail(mysubdata,5)


#dplyr rename func
mydata<-rename(mydata,abbrivation=abb)#abb olan� abbreviattir
names(mydata)

mysubdata<-select(mydata,state,abbrivation,murders)
mysubdata


#dplyr mutate func
mysubdata<-mutate(mydata,ratio=murders/population)#yeni bir de�er ekleyip o de�ere murders ile populasyonun b�l�m�n� yazd�k
names(mysubdata)
mysubdata

mysubdata<-transmute(mydata,ratio=murders/population, state=state)#sadece ratio de�erini d�nd�ren bir dataframe
head(mysubdata)


#dplyr groupby func
mysubdata<-group_by(mydata,region)
mysubdata
# Groups:   region [4] �eklinde ��kt� verir yani toplam 3 grup bulunmaktad�r
summarise(mysubdata,sum(murders))#elimizdeki dataframede her regiondan ka� tane bulundu�u

summarise(mysubdata,mean(murders))


#dplyr pipe operator
#Pipe operat�r� |> bir fonksiyonun sonucunu di�er fonksiyona ilk de�er olarak ge�irir.
mysubdata<-arrange(mydata,murders)
mysubdatamurders<-select(mysubdata,state,murders)
mysubdatamurders

arrange(mydata,murders) %>% select(state,murders) %>% head(5)#ayn� i�lemi pipe operator ile yapt�k ilkinden gelen datay� selecte vererek �ncekinde 3 sat�rda yapt���m�z� bunda tek sat�rda yapt�k

