
#Amostra aleatoria simple
amostra = sample(c(0,1),150, replace = TRUE, prob = c(0.5,0.5))
amostra
length(amostra[amostra==1])
length(amostra[amostra==0])

#Amostra estratificada
summary(iris)
#install.packages("sampling")
library(sampling)
amostra2 = strata(iris, c("Species"), size = c(25,25,25), method = "srswor")
summary(amostra2)

#Amostra sistematica
#install.packages("TeachingSampling")
library("TeachingSampling")
library("dplyr")
library("magrittr")
amostra3 = S.SY(150,10)
amostra3
amostrairis = iris[amostra3,]
amostrairis
