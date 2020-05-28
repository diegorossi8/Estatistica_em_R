#Em um cesto de frutas com Média 8 e Desvio_Padrão 2 probabilidade de tirar fruto com menos de 6kg.
pnorm(6,8,2)

#Tirar um objeto > 6kg
pnorm(6,8,2, lower.tail=FALSE)
1 - pnorm(6,8,2)

#Tirar um objeto menor que 6 kg ou maior que 10 kg.
pnorm(6,8,2) + pnorm(10,8,2, lower.tail = F) 

#Tirar um objeto <10 Kg e > 8kg
pnorm(10,8,2) - pnorm(8,8,2)

#Gerar dados normalmente distribuidos
x = rnorm(100)
x
#Gerar gráfico
qqnorm(x)
#Gerar linha
qqline(x)
#Teste de normalidade de shapiro
shapiro.test(x)
