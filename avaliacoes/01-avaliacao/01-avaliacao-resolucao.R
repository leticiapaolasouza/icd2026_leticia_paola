# Arquivo: 01-avaliacao-resolucao.R
# Integrante 1: Livia Couto Arantes
# Integrante 2: Leticia Paôla de souza
# Integrante 3: julia Aparecida Arantes
# Integrante 4: Thayna Pereira Vieira
# Data: 28/04/2026
# Objetivo: Resolução da Avaliação 1 — Introdução à Ciência de Dados


# Configurações globais -----------------------------------------------

options(digits = 5, scipen = 999)

# carrega os pacotes usados (Exercício 1)


# Exercício 1 -----------------------------------------------------------

# importa o arquivo agencias.csv

# define o caminho relativo do arquivo usando a função here():

caminho_agencias <- here("dados/brutos/agencias.csv")
  
  
  # importa o arquivo com a função read_csv:
  dados_agencias <- read.csv (caminho_agencias)
  
  
  # inspeciona a estrutura do objeto
  glimpse(dados_agencias)
  
  
  # importa o arquivo credito_trimestral.csv

  credito_trimestral.csv
  
  # define o caminho relativo do arquivo usando a função here():
  caminho_credito <- here ("dados/brutos/agencias.csv")
  
  
  # importa o arquivo com a função read_csv:
  dados_credito <-read_csv(caminho_credito)
  
  # inspeciona a estrutura do objeto
  
  glimpse(dados_credito)
  
  # Exercício 2 ----------------------------------------------------------

# 2.a)dados_agencias_plenas |>
  filter = dados_
  


# 2.b)


# 2.c)



# Exercício 3 ---------------------------------------------------------

# 3.a) pivot_longer

# reorganiza os dados de crédito em trimestre e volume_credito

dados_credito_longo <-dados_credito 
    
  pivot_longer(
    cols = -empresa,
    names_to = c("indicador", "trimestre"),
    names_sep = "_",
    values_to = "valor"
  )
  
  
  ##codigo_agencia, trimestre e volume_credito
  # 3.b) left_join
  
  # combina `dados_credito_longo`com `dados_agencias`
  dados_completos <-
  
  
  
  # Exercício 4 ---------------------------------------------------------

# cria dados_analise com credito_por_cooperado
dados_analise <- 
  
  # resume por cidade e ordena por volume_total
  dados_analise |>
  
  
  # Resposta do Exercício 4:
  
  # Cidade com maior volume_total:
  # Cidade com maior media_dos_creditos_por_cooperado:
  
  
  
  # Exercício 5 ---------------------------------------------------------

# classifica nivel_credito e resume por tipo_agencia
resumo_por_tipo <- 