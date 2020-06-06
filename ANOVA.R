tratamento = read.csv(file.choose(),se = ";", header = T)
#Importando a base de dados.
fix(tratamento)
#Exibir a bas de dados
boxplot(tratamento$Horas ~ tratamento$Remedio)
#Gerando grafico com linha de mediana
an=aov(Horas ~ Remedio, data = tratamento)
#Gerando anova com duas variaveis
summary(an)
#Imprimindo o sumario

an=aov(Horas ~ Remedio * Sexo, data = tratamento)
#Gerando Anova com tres variaveis
summary(an)
#Gerando o sumario

an=aov(Horas ~ Remedio, data = tratamento)
#Gerando novamente para gerar o tukey
tukey = TukeyHSD(an)
#gerando tukey para ver a variação entra clases
tukey
#Imprimindo
plot(tukey)
#Gerando grafico 
