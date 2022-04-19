# Estatítica Básica

# Parte 4 - Tabela de Frequência

# Definindo a Pasta de Trabalho

setwd("C:/Users/rq_so/OneDrive/Área de Trabalho/Linguagem R - Análise Estatística (DSA)/Linguagem-R---Analise-Estatistica-DSA-")
getwd ()

# Carregando o dataset

dados <- read.table("Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,
                    fileEncoding = "windows-1252")

# Visualizando e Sumarizando os Dados

View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

# Tabela de Frequências Absolutas

freq <- table(dados$grau_instrucao)
View(freq)


# Tabela de Frequências Relativas

freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 = freq_rel_table)

p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona Linhas de Total

View(freq)
freq <- c(freq, sum(freq))
names(freq)[4] <- "Total"
View(freq)

# Tabela Final com Todos os Valores

# Calculamos frequência relativa e frequência proporcional

freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tabela Final Com Todos Os Vetores

tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_Rel = round(p_freq_rel, digits = 2))
View(tabela_final)