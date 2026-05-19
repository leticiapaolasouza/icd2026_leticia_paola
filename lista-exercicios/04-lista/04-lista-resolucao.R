# Arquivo: 04-lista-resolucao.R
# Autor(a): Leticia Paôla de Souza
# Data: 12/05/26
# Objetivo: Resolução da Lista de Exercícios 4

# Configurações globais --------------------------------------

# Configura o número de dígitos exibidos
options(digits = 5, scipen = 999)


# Exercício 2 ------------------------------------------------

# a)
# total de conjuntos diferentes de 20 números sorteados entre 100
total_resultados <- choose(100,20)
total_resultados


# b)
# resultados favoráveis: os 20 números sorteados precisam estar
# dentro dos 50 números escolhidos na aposta
resultados_favoraveis <- choose(50,20)
resultados_favoraveis

# c)
# probabilidade de acertar os 20 números
prob_acertar_20 <-resultados_favoraveis/total_resultados
prob_acertar_20

# forma alternativa de interpretação: uma chance em quantas apostas?
uma_chance_em <- 1 /  prob_acertar_20
uma_chance_em


# d)
# Escreva sua interpretação como comentário.
## É baixa, pois O valor encontrado foi aproximadamente de 0,0000008793
# Isso significa que a chance de uma aposta acertar os 20 números sorteados é 
# muito baixa.


# Exercício 3 ------------------------------------------------

# probabilidade teórica do evento A: obter 5 ou 6
prob_teorica <-  2:6
prob_teorica
# resultados possíveis do dado
dado <- 1:6

# número de lançamentos
n <- 100

# fixa a semente para reprodutibilidade
set.seed(123)

# simula os lançamentos
# dica: em um dado equilibrado, todas as faces têm a mesma probabilidade
lancamentos <- sample(
  x = dado,
  size =n,
  replace = TRUE,
  prob = rep(1/6,6)
)

# evento A: resultado maior ou igual a 5
evento_A <- lancamentos >= 5

# número de lançamentos favoráveis ao evento A
favoraveis <- sum(evento_A)
favoraveis

# frequência relativa do evento A
freq_relativa <-mean(evento_A)
freq_relativa

# Depois de completar para n = 100, altere n para 1000 e 10000.

##1000

# probabilidade teórica do evento A: obter 5 ou 6
prob_teorica <-  2:6

# resultados possíveis do dado
dado <- 1:6

# número de lançamentos
n <- 1000

# fixa a semente para reprodutibilidade
set.seed(123)

# simula os lançamentos
# dica: em um dado equilibrado, todas as faces têm a mesma probabilidade
lancamentos <- sample(
  x = dado,
  size =n,
  replace = TRUE,
  prob =rep(1/6,6)
)

# evento A: resultado maior ou igual a 5
evento_A <- lancamentos >= 5

# número de lançamentos favoráveis ao evento A
favoraveis <- sum(evento_A)
favoraveis

# frequência relativa do evento A
freq_relativa <-mean(evento_A)
freq_relativa


##10.000

# probabilidade teórica do evento A: obter 5 ou 6
prob_teorica <-  2:6

# resultados possíveis do dado
dado <- 1:6

# número de lançamentos
n <- 10000

# fixa a semente para reprodutibilidade
set.seed(123)

# simula os lançamentos
# dica: em um dado equilibrado, todas as faces têm a mesma probabilidade
lancamentos <- sample(
  x = dado,
  size =n,
  replace = TRUE,
  prob = rep(1/6,6)
)

# evento A: resultado maior ou igual a 5
evento_A <- lancamentos >= 5

# número de lançamentos favoráveis ao evento A
favoraveis <- sum(evento_A)
favoraveis

# frequência relativa do evento A
freq_relativa <-mean(evento_A)
freq_relativa




# Exercício 5 ------------------------------------------------


# Cálculo do valor esperado com R

# parâmetros do modelo
prob_incendio <- 0.01
indenizacao <- 150000
carregamento <- 0.25

# valor esperado de indenização por residência
valor_esperado <- prob_incendio * prob_incendio

# exibe o resultado
valor_esperado

# prêmio anual por residência com acréscimo
premio <- valor_esperado * (1 + carregamento)

# exibe o resultado
premio


# a) O valor esperado de idenização é de R$1.500 por residência por ano 
#Ele representa a média teórica das idenizações por residência em 
#uma carteira grande de riscos semelhantes



# b) O valor esperado não significa que toda residência terá idenização 
#de r$1.500 .Para uma residência individual ,a idenização será r$0
#se não houver incêndio ou r$150.000



# c) o Calculo  é simplificado.ELE ignora despesas administrativas ,impostos,
#corretagem ,inadimplência ,capital regulatório ,resseguro ,eventos extremos 



# Exercício 6 ------------------------------------------------

# fixa a semente para obter os mesmos resultados ao reexecutar
set.seed(2)

# tamanho da carteira de residências seguradas
n <- 100

# simula a indenização de cada residência: 0 ou valor total da indenização
indenizacoes <- sample(
  x = c(0, indenizacao),
  size = n,
  replace = TRUE,
  prob = c(1 - prob_incendio, prob_incendio)
)

# média das indenizações por residência na carteira simulada
media_indenizacoes <- mean(indenizacoes)
media_indenizacoes

# total de indenizações pagas pela seguradora
total_indenizacoes <- sum(indenizacoes)
total_indenizacoes

# total arrecadado com os prêmios cobrados
total_premios <- n * premio
total_premios

# resultado simplificado da carteira: prêmios recebidos menos indenizações pagas
resultado_carteira <-total_premios -total_indenizacoes
resultado_carteira

#Carteira com n=100000

#fixa a semente para reprodutibilidade 
set.seed(2)

#Tamanho da carteira de residências seguradas
n <-100000


#Simula a idenização de cada residência :0 ou valor total 

indenizacoes <-sample(
  x = c(0,indenizacao),
  size = n,
  replace = TRUE,
  prob = c(1 - prob_incendio, prob_incendio)
)

# média das indenizações por residência na carteira simulada
media_indenizacoes <- mean(indenizacoes)
media_indenizacoes

# total de indenizações pagas pela seguradora
total_indenizacoes <- sum(indenizacoes)
total_indenizacoes

#Total arrecadado com premios
total_premios <- n * premio
total_premios

#resultado simplificado 
receita_carteira  <-total_premios -total_indenizacoes
resultado_carteira
##--------------------------------------------------------------------#
  #Resposta do Script completo #
  
  
  # Arquivo: 05-probabilidade.R
  # Autor(a): <seu nome>
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


# 1. Probabilidade clássica ---------------------------------------------

# Exemplo: lançar uma moeda equilibrada 3 vezes.
# A função tosscoin() cria o espaço amostral do experimento.
espaco_moeda_3 <- tosscoin(times = 3)
espaco_moeda_3

# Evento A: obter exatamente uma cara.
# No pacote probs, "H" representa cara (heads) e "T" representa coroa (tails).
evento_uma_cara <- rowSums(espaco_moeda_3 == "H") == 1
evento_uma_cara

# Número de resultados favoráveis ao evento A.
favoraveis_uma_cara <- sum(evento_uma_cara)
favoraveis_uma_cara

# Número total de resultados possíveis.
total_resultados_moeda <- nrow(espaco_moeda_3)
total_resultados_moeda

# Probabilidade clássica: casos favoráveis / casos possíveis.
prob_uma_cara <- favoraveis_uma_cara / total_resultados_moeda
prob_uma_cara


# 2. Combinações e probabilidade: Mega-Sena -----------------------------

# Na Mega-Sena, uma aposta simples escolhe 6 números entre 60.
# A função choose(n, k) calcula o número de combinações possíveis.
total_combinacoes <- choose(60, 6)
total_combinacoes

# Probabilidade de acertar os 6 números com uma aposta simples.
prob_megasena <- 1 / total_combinacoes
prob_megasena

# A mesma probabilidade em percentual.
prob_megasena_percentual <- prob_megasena * 100
prob_megasena_percentual


# 3. Simulação com sample(): lançamento de dado -------------------------

# Define os resultados possíveis de um dado equilibrado.
dado <- 1:6

# Fixa a semente para que a simulação possa ser reproduzida.
set.seed(123)

# Número de lançamentos que serão simulados.
n <- 10

# Simula n lançamentos independentes do dado.
# replace = TRUE indica que cada face continua disponível no próximo lançamento.
lancamentos <- sample(
  x = dado,
  size = n,
  replace = TRUE
)

# Valores observados nos lançamentos simulados.
lancamentos

# Média observada nos n lançamentos simulados.
media_lancamentos <- mean(lancamentos)
media_lancamentos


# 4. Lei dos Grandes Números: aumentando n ------------------------------

# Valor esperado teórico de um dado equilibrado.
valor_esperado_dado <- mean(dado)
valor_esperado_dado

# Tamanhos de simulação que serão comparados.
tamanhos_simulacao <- c(100, 1000, 10000, 100000)

# Gera uma sequência longa de lançamentos.
set.seed(123)
lancamentos_longos <- sample(
  x = dado,
  size = max(tamanhos_simulacao),
  replace = TRUE
)

# Calcula a média observada usando os primeiros n lançamentos da sequência.
resumo_lgn_dado <- tibble(
  n = tamanhos_simulacao
) |>
  mutate(
    media_observada = map_dbl(
      n,
      ~ mean(lancamentos_longos[1:.x])
    ),
    valor_esperado_teorico = valor_esperado_dado
  )

# exibe o resultado
resumo_lgn_dado
