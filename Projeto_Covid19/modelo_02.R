# 1 - Trabalhando com colunas de um data.frame :

#Para selecionar ou trabalhar separadamente com um campo/(coluna) 
#do seu data.frame, deve-se utilizar o $ :
conf <- (covidao$New_cases)
conf
#Aqui recebeu a coluna 'New_cases' --> Novos_casos;

#Tentaremos criar um vetor contendo infos somente do Brasil :
covid_br <- covidao[covidao$Country == 'Brazil', ]
covid_br
#Conseguimos ✌️🤓

#O pacote tidyr é mais um dos pacotes criados por Hadley Wickham.
install.packages("tidyr")
library(tidyr)
library(dplyr)
#Serve para Limpeza de Dados, o que não é necessário agora;

#Vamos refazer a variavel 'covid_br_confirmados'(terá apenas 2 colunas):
covid_br_conf <- covid_br %>% select(New_cases, Cumulative_cases)
covid_br_conf
covid_br_death <- covid_br %>% select(New_deaths, Cumulative_deaths)
covid_br_death

#Pronto, temos nossas variaveis de análise sobre o dataset!