library(datasets)
head(iris)

plot(iris$Species)

plot(iris$Petal.Length)#verilerin uzunluk da��l�mlar�
plot(iris$Petal.Width)

plot(iris$Species, iris$Sepal.Length)#�zelliklerine g�re uzunluk da��l�m�
plot(iris$Species, iris$Petal.Width)
plot(iris)#b�t�n veriseti aras�ndaki ba�lant�lar�n grafi�i


#plot ayarlar�
plot(iris$Sepal.Length, iris$Sepal.Width,
     col="#cc0000",
     pch=19,
     main="Iris: Sepal Length vs. Sepal Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width"
     )

#matematiksel grafikler
plot(cos,0,2*pi)

plot(dnorm,-3,+3,
     col="#cc0000",
     lwd=5,
     main="Standard Normal Distribution",
     xlab="z-scores",
     ylab="Density")
