# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Definindo a pasta de trabalho
# (Substitua o caminho abaixo pela pasta no seu computador)

setwd ("C:/Users/rq_so/OneDrive/Área de Trabalho/Linguagem R - Análise Estatística (DSA)/Linguagem-R---Analise-Estatistica-DSA-")
getwd()

# Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset

head(vendas)
tail(vendas)
View(vendas)
srt(vendas)
summary (vendas$Valor)

# Medidas de Tendência Central

summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando Variáveis Numéricas

mean(vendas$Valor)
median(vemdas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0,01, 0.99))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
