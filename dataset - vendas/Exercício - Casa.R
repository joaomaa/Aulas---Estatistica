head(iris)
str(iris)
summary(iris)

media_petal <- mean(iris$Petal.Length)
hist(iris$Petal.Length,
     main = "Histograma do Comprimento das Pétalas",
     xlab = "Comprimento das Pétalas (cm)",
     ylab = "Frequência",
     col = "lightblue",
     border = "black")
