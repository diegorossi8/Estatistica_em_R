eleicao = read.csv(file.choose(),sep=';',header=T)
#Importar a base eleição.csv
fix(eleicao)
#Exibir arquivo

plot(eleicao$DESPESAS,eleicao$SITUACAO) 
#Imprimir os pontos em um grafico para visualisao a correlação gasto eleito
summary(eleicao)
#Criando Sumario
cor(eleicao$DESPESAS,eleicao$SITUACAO)
#Vendo o indice de correlação entre as variaveis
modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
#Criando modelo com GLM é geral diferente lm. family binomial é o tipo de estatistica

plot(eleicao$DESPESAS,eleicao$SITUACAO, col='red', pch=10)
#Gerando os pontos e printado-os
points(eleicao$DESPESAS,modelo$fitted, pch=4)
#Gerando os pontos 

prever_eleicao = read.csv(file.choose(), sep = ";", header = T )
#Importar os novos candidatos
fix(prever_eleicao)
#Exibir a base

prever_eleicao$RESULT = predict(modelo, newdata = prever_eleicao, type = "response")
prever_eleicao$RESULT
fix(prever_eleicao)

