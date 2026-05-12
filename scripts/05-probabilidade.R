# Arquivo: 05-probabilidade.R
# Autor :Letícia Paôla de Souza
# Data: 11/05/2026
# Objetivos:
# 1. Praticar cálculos básicos de probabilidades
# 2. Praticar conceitos básicos de simulação de Monte Carlo

# Configuracoes globais -----------------------------------------------

# exibe números sem notação científica
options(digits = 5, scipen = 999)


# Pacotes usados ------------------------------------------------------

library(tidyverse)
library(probs) # instale esse pacote

###Solução do exemplo 1 
##A função tosscoin simula o lançamento de moedas 
#Simula o lançamento de 3 moedas

#espaço amostral do lançamento de uma moeda 2 vezes 
tosscoin(times = 3) 


#Exemplo 2 
#Em R, a função choose(n, k) calcula o número de combinações possíveis: 

# para exibir os números sem notação científica
options(scipen = 999)

choose(60,6)

# para exibir os números sem notação científica
options(scipen = 999)

# prob. de acertar os 6 números da megasena com 1 aposta
1/choose(60,6)


#EXEMPLO 3 Simulando o lançamento de um dado:

# fixa a semente para reprodutibilidade
set.seed(123)

# cria um vetor de 1 até 6 (faces)
dado <- 1:6                                 

# define o n. de lançamentos do dado
n <- 10 

# simula os 10 lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)
lançamentos

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada

#Repita o experimento aumentando o tamanho da amostra. Execute o código abaixo
#trocando n pelos valores 100, 1.000, 10.000 e 100.000 
#e anote o valor médio obtido.


# fixa a semente para reprodutibilidade
set.seed(123)

# 1)define o n. de lançamentos do dado
n <- 100 

# simula os n lançamentos
lançamentos <- sample(dado, size = 100, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada



# 2)1.000
# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 1000 

# simula os n lançamentos
lançamentos <- sample(dado, size = 1000, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada

# 3)10.000
# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 10.000

# simula os n lançamentos
lançamentos <- sample(dado, size = 10.000, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada

#4) 100.000
# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 100.000 

# simula os n lançamentos
lançamentos <- sample(dado, size = 100.000, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada