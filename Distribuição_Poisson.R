#Media de acidentes por dia 2

#Prob. de acontecer 3 acidentes
dpois(3, lambda = 2)*100

#Prob. de acontecer 3 acidentes ou meno
ppois(3, lambda = 2)*100

#Prob. de acontecer mais que 3 acidentes
ppois(3, lambda = 2, lower.tail = F)*100
