novela = matrix(c(19,6,43,32), nrow = 2, byrow = TRUE)
#Criando a matrix com numero de linhas 2 e byrow para destribuir na ordem os dados
fix(novela)
#Exibir 
rownames(novela)= c("Masculino", "Feminino")
#Colocando nome nas linhas
colnames(novela) = c("Assiste", "Nao_Assite")
#Colocando nome nas colunas
fix(novela)
#Exibir 
chisq.test(novela)
#Vaigerar o p no caso aqui 0.15 ai dependo do valor de alfa que escolheu para seu teste de hipetes