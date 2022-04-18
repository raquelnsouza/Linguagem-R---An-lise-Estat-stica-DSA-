# Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
# (Substitua o caminho abaixo pela pasta no seu computador)

setwd ("C:/Users/rq_so/OneDrive/Área de Trabalho/Linguagem R - Análise Estatística (DSA)/Linguagem-R---Analise-Estatistica-DSA-")
getwd()

# Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset

View(vendas)
srt(vendas)
summary (vendas$Valor)

# Variância

var(vendas$Valor)

# Desvio Padrão

sd(vendas$Valor)


