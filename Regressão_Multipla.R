dim(mtcars)
#Dimensão da base de dados

colnames(mtcars)
#Colunas da base

cor(mtcars[1:4])
#Corrrelação entre as colunas de 1 a 4

modelo = lm(mpg ~ disp + hp + cyl, data = mtcars)
#Criação do modelo utilizando mpg como variavel independete e hp disp e cyl como dependente

summary(modelo)$r.squared
#R² do modelo porem não é aconselhavel em multiplas esta jeito de fazer, abaixo o correto.

summary(modelo)$adj.r.squared
#R² ajustavel, deve-se ser usado sempre em variaveis multiplas

predict(modelo, data.frame(disp=200,hp=100,cyl=4))
#Prevendo o consumo de combustivel com multiplas variaveis