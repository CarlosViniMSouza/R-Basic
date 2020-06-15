#Instalando pacote p/ manipulação de dados:
install.packages("dplyr")
library(dplyr)

#Pacote p/ Leitura de Dados :
install.packages("readr")
library(readr)

#Pacote p/ Limpeza de Dados:
install.packages("tidyr")
library(tidyr)

#Vamos instalar a  "A gramática dos gráficos"
# +1 pacote extra p/ analises mais simples:
library(ggplot2)
library(esquisse)

#Indicamos o caminho usando 'setwd('caminho ate a pasta')': 
setwd("C:/Users/user/Documents/CVMDS/RStudio_Prog/Projeto_Covid19/Planilhas")

#Depois usamos o getwd() para saber se seguiu o caminho:
getwd()

#Puxando um arquivo csv qualquer:
covid <- read.csv("Covid_no_br.csv")

#Criar vetor contendo infos somente do Brasil :
covid_br <- covid[covid$Country == 'Brazil', ]
covid_br

#Refazendo a variavel 'covid_br'(4 colunas apenas):
covid_br_res <- covid_br %>% select(Date_reported, 
                                    New_cases, Cumulative_cases,
                                    New_deaths, Cumulative_deaths)
covid_br_res

#Ok, feito a visualizacao, limpeza e mineracao dos dados, plote
#usando a seguinte estrutura:
#
#  ggplot(data = <DATA>) +
#  <GEOM_FUNCTION>(
#    mapping = aes(<MAPPINGS>),
#    stat = <STAT>,
#    position = <POSITION>
#  ) +
#  <COORDINATE_FUNCTION> +
#  <FACET_FUNCTION> # dividir o gráfico em subplots
#

covid_graf <- ggplot(data = covid_br_res) +
  geom_point(aes(x=Date_reported, y=Cumulative_deaths, colour = "green"),
             size = 2) +
  scale_color_manual("Automatic",
                     values = c("blue"),
                     labels = c("Cumulative_deaths"))
  labs(title = 'Relatorio Atual',
       y = 'Obitos Regristrados no momento',
       x = 'Tempo de duracao')
covid_graf
#Criamos nosso primeiro gráfico sem nenhum detalhamento estatístico!