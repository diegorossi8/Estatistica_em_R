from scipy.stats import t
#Media salarios cientista de dados 75 ph, Amostra 9 e Desvio padrão 10

#Probabilidade de 1 cientista de dadso que receba <80 ph t=1.5 Tabela

t.cdf(1.5,8)*100

#E para selececio 1 que ganhe >80 ph

t.sf(1.5,8)
#ou
1-t.cdf(1.5,8)

#A soma dos dois deve dar 1
t.cdf(1.5,8) + t.sf(1.5,8)
