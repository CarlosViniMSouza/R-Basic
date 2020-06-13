#Primeiro Trabalho com Bancos de Dados em R

#Para instalar um pacote, execute o seguinte comando:
install.packages("dplyr") # instala um famoso pacote de manipulação de dados

# sempre que fizer um novo código, terá que carregar a 
#biblioteca do 'dplyr' pelo seguinte com.: library(dplyr)

?dplyr

??dplyr

# O com.N.1 não ajudou, ao contrário do com.N.2!

#Para O R ler os dados em uma determinada pasta, indicamos o caminho
#usando setwd('caminho até a pasta')
setwd("C:/Users/user/Documents/CVMDS/RStudio_Prog/Dados_Covid19")

#depois usamos o getwd() para saber se seguiu o caminho, e no meu caso, deu certo!
getwd()

#Pacote p/ Leitura de Dados :
library(readr)

#Vou puxar um arquivo csv de coovid já estudado:
covidao <- read.csv("Covid-global-semana1.csv")

#Agora, vejamos 'a cabeça e os pés' do dataset importado:
head(covidao)
tail(covidao)

#Veja o tipo de objeto, use class():
class(covidao)

#Veja a estrutura do objeto, com str():
str(covidao) ##STRucture()

#Veja tambem a estatísticas básicas do 
#objeto (média, mediana, quantis, mínimo, máximo etc.), usamos summary()
summary(covidao)

# ✌🤓 -->  melhor emoji #

#Ficará mais claro a seguir. Veja como se cria um data.frame:
#cria-se diferentes vetores
name <- c('João', 'José', 'Maria', 'Joana')
year <- c(45, 12, 28, 31)
man <- c(TRUE, FALSE, TRUE, TRUE)
uf <- c('AM', 'RR', 'AC', 'PA')
#cada vetor é uma combinação de elementos de um MESMO tipo de dados
#sendo assim, cada vetor pode ser uma coluna de um data.frame
users <- data.frame(name, year, man, uf)
users
##data.frame finalizado

#Conversões de tipos de variáveis:
# as.numeric() --> converte para numerico/float
# as.integer() --> converte para numerico/int(arredonda)
# as.logical() --> converte 1/0 em TRUE/FALSE
# as.character() --> converte qualquer variável em string(basicamente)

#Vejamos se não está faltando dados na tabela:
is.na(covidao)

#No próximo script vamos começaar a trabalhar com o banco de dados em si;