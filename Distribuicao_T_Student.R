#Media salarios cientista de dados 75 ph, Amostra 9 e Desvio padrão 10

#Probabilidade de 1 cientista de dadso que receba <80 ph t=1.5 Tabela

pt(1.5,8)

#E para selececio 1 que ganhe >80 ph

pt(1.5,8,lower.tail = F)
#ou
1-pt(1.5,8)

#A soma dos dois deve dar 1
pt(1.5,8) + pt(1.5,8,lower.tail = F)
