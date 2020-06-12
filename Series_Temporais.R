##Series Temporais Explorando os Dados##
#Ver a base de dados
AirPassengers
#Pegar a data de inicio da serie temporal
start(AirPassengers)
#Pegar a data final da serie
end(AirPassengers)
#Gerar grafi a base
plot(AirPassengers)
#Gerar grafico da serie agregada por ano
plot(aggregate(AirPassengers))
#Gerar grafico agredado por mes
monthplot(AirPassengers)
#Trabalhar so com uma parte dos dados
subst = window(AirPassengers, start=c(1960,1), end=c(1960,12))
#Gerar gráfico 
subst
plot(subst)


##Decompondo os dados##
#Usando a função decompose
dec = decompose(AirPassengers)
dec
#Ver somente a sazonalidade
dec$seasonal
plot(dec$seasonal)
#Ver somente tendencia
dec$trend
plot(dec$trend)
#Ver somente aleatoridade
dec$random
plot(dec$random)
#gerar o grafico de todos juntos
plot(dec)

##Fazendo previsão##
#Usando a media geral porem o erro pode ser muito alto devido a tendencia de crescimento
mean(AirPassengers)
#Usando pela media do ultimo ano
mean(window(AirPassengers, start=c(1960,1), end=c(1960,12)))
#Instalar o pacote forecast
install.packages("forecast")
library(forecast)
#Ideal fazer pela media movel
mediamovel = ma(AirPassengers, order=12)
mediamovel
#Grafico media movel
plot(mediamovel)
#fazendo a previsão o h do forecast tem que ser igual ao valor de order da mediamovel
previsao = forecast(mediamovel, h=12)
#o Lo e Hi são o indices de confiaça
previsao
plot(previsao)

#melhorando a previsão com arima que vai levar em conta a sazonalidade
#usando a arima.auto para configurar automatico
arima = auto.arima(AirPassengers)
arima

#Gerando a previsão com o arima
previsao2 = forecast(arima, h=12)
previsao2
plot(previsao2)
