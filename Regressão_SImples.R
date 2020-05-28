dim(cars)
#consulta a base de dados
head(cars)
#Vissualização dos dados
cor(cars)
#Calcula o indice de correlação

modelo = lm(speed ~ dist, data=cars)
#criação do modelo
modelo
#imprimir o modelo

plot(modelo)
#criar grafico modelo

plot(speed ~ dist, data = cars)
#gerando modelo direto no grafico
abline(modelo)
#Passar a linha de regressão

modelo$coefficients
#ver os coeficientes

modelo$coefficients[1] + modelo$coefficients[2] * 22
#Calcular a velocidade do veiculo

predict(modelo, data.frame(dist=22))
#Outra forma mais facil de calcular

summary(modelo)
#Sumario com informações do modelo

plot(modelo$fitted.values)
  