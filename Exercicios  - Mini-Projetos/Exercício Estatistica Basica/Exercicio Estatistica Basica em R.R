# Exercício Estatística Básica - Raquel Souza (DSA)

# Em anexo você encontra um dataset contendo notas de diversos alunos em duas turmas diferentes. 
# Usando a Linguagem R, resolva os itens abaixo:

# 1 Apresente um resumo de tipos de dados e estatísticas do dataset.  
# 2 Qual a média de cada turma? 
# 3 Qual turma apresentou maior variabilidade de notas? Justifique sua resposta. 
# 4 Calcule o coeficiente de variação das 2 turmas.
# 5 Qual nota apareceu mais vezes em cada turma?

# -----------------------------------------------

# Definindo a Pasta de Trabalho

setwd("C:/Users/rq_so/OneDrive/Área de Trabalho/Linguagem R - Análise Estatística (DSA)/Linguagem-R---Analise-Estatistica-DSA-/Exercicios  - Mini-Projetos/Exercício Estatistica Basica")
getwd()  

# Carregando o Dataset

notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

#1 Resumo do Dataset

View(notas)
head(notas)
tail(notas)
summary(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)
str(notas)

#2 Média de Cada Turma

mean(notas$TurmaA)
mean(notas$TurmaB) 

#3 Variabilidade de Notas das Turmas

sd(notas$TurmaA)
sd(notas$TurmaB)
     # A turma A apresenta uma maior variabilidade entre as duas,
     # pois tem mais que o dobro da variação da turma B

#4 Variação das Duas turmas

media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

cvA <- sd_ta / media_ta = 100
cvB <- sd_tb / media_tb = 100

cvA
cvB

#5 Qual a Moda das Turmas

   # Criando uma Função

moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

   # Obtendo a Moda da Turma A

resultado <- moda(notas$TurmaA)
print(resultado)

   # Obtendo a Moda da Turma B

resultado <- moda(notas$TurmaB)
print(resultado)

  
