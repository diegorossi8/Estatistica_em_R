from scipy import stats
from scipy.stats import norm
import matplotlib.pyplot as plt

#Em um cesto de frutas com Média 8 e Desvio_Padrão 2 probabilidade de tirar fruto com menos de 6kg.
norm.cdf(6,8,2)

#Tirar um objeto > 6kg
norm.sf(6,8,2)
1-norm.cdf(6,8,2)

#Tirar um objeto menor que 6 kg ou maior que 10 kg.
norm.cdf(6,8,2) + norm.sf(10,8,2)

#Tirar um objeto <10 Kg e > 8kg
norm.cdf(10,8,2) - norm.cdf(8,8,2)

#Gerar dados normalmente distribuidos
dados = norm.rvs(size = 10000)
#Gerar gráfico e gerar linha
stats.probplot(dados, plot = plt)
#Teste de normalidade de shapiro
stats.shapiro(dados)