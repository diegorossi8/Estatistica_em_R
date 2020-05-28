# Jogar uma moeda 5 vezes e dar cara 3 vezes.
dbinom(3,5,0.5)

#Passar por 4 semafaros de 4 tempo cada e estar 0 aberto 1 aberto... 4 abertos.
dbinom(0,4,0.25)
dbinom(1,4,0.25)
dbinom(2,4,0.25)
dbinom(3,4,0.25)
dbinom(4,4,0.25)
#probabilidade acumulativa
pbinom(4,4,0.25)

#Fazer uma prova de multipla escolha com 12 questões que tem alternativas A, B, C, D e acertar 7 questões chutando a prova toda.
dbinom(7,12,0.25)
dbinom(7,12,0.25)*100