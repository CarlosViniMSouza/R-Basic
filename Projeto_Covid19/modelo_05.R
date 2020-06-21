#Instalando pacote p/ manipula��o de dados:
install.packages("dplyr")
library(dplyr)

#Pacote p/ Leitura de Dados :
install.packages("readr")
library(readr)

#Pacote p/ Limpeza de Dados:
install.packages("tidyr")
library(tidyr)

#Vamos instalar a  "A gram�tica dos gr�ficos"
# +1 pacote extra p/ analises mais simples:
library(ggplot2)
library(esquisse)

#Indicamos o caminho usando 'setwd('caminho ate a pasta')': 
setwd("C:/Users/user/Documents/CVMDS/RStudio_Prog/Projeto_Covid19/Planilhas")

#Depois usamos o getwd() para saber se seguiu o caminho:
getwd()

#Puxando um arquivo csv qualquer:
covid <- read.csv("Covid-global-semana2-Junho.csv")
covid

#Criar vetor contendo infos somente do Brasil :
covid_br <- covid[covid$Country == 'Brazil', ]
covid_br

#Refazendo a variavel 'covid_br'(4 colunas apenas):
covid_br_res <- covid_br %>% select(Date_reported, New_cases, Cumulative_cases,
                                    New_deaths, Cumulative_deaths)
covid_br_res

#Vamos agora puxar o resultado das ultimas 3 semanas:
covid_time <- tail(covid_br_res, 21)
covid_time

covid_limpo <- covid_time %>%
select(ï..Date_reported, Cumulative_cases, Cumulative_deaths) %>%
filter(Cumulative_cases != 'NA', Cumulative_deaths != 'NA') %>%
distinct() #semelhante ao unique(), traz registros únicos sem repetição
covid_limpo #agora temos os 'NA' na tabela 

write.table(covid_limpo, file = "covid_br_junho_2.csv", sep = ",", na = "", quote = FALSE)
#Aqui vamos salvar o data.frame em formato '.csv'

#Vamos associas as var. acum. em var. peq.:
ob <- covid_limpo$Cumulative_deaths
ob
conf <- covid_limpo$Cumulative_deaths
conf
#aqui sera colocada nossa var. sob uma distribuicao
ob2 <- rnorm(ob)
ob2
conf2 <- rnorm(conf)
conf2

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
#  <FACET_FUNCTION> # dividir o gr�fico em subplots
#

covid_graf_death <- ggplot(data = covid_limpo) +
  geom_point(aes(x=Date_reported, y=Cumulative_deaths, colour = "green"),
             size = 2) +
  scale_color_manual("Automatic",
                     values = c("blue"),
                     labels = c("Cumulative_deaths"))
  labs(title = 'Relatorio Atual',
       y = 'Obitos Registrados no momento',
       x = 'Tempo de duracao')
covid_graf_death
#Criamos nosso primeiro gr�fico sem nenhum detalhamento estat�stico!

covid_graf_conf <- ggplot(data = covid_limpo) +
  geom_point(aes(x=Date_reported, y=Cumulative_deaths, colour = "green"),
             size = 2) +
  scale_color_manual("Automatic",
                     values = c("blue"),
                     labels = c("Cumulative_deaths"))
  labs(title = 'Relatorio Atual',
       y = 'Confirmações Registrados no momento',
       x = 'Tempo de duracao')
covid_graf_conf
#Criamos o nosso segundo gráfico

plot(covid_limpo$Cumulative_deaths,
xlab="Tempo", ylab="Acumulado de Óbitos", main="Resultado da Amostra entre 05/20 e 06/09",
col="red", pch=13, type="b")
#Usando a funcao 'plot()' p/ mortes acumuladas

plot(covid_time$New_cases,
xlab="Tempo", ylab="Acumulado de Casos", main="Resultado da Amostra entre 05/20 e 06/09",
col="red", pch=13, type="b")
#Usando a funcao 'plot()' p/ casos acumulados

hist(ob2, 
  col="red",
  freq=F, 
  main="Distribuiçao em F - mortes", 
  xlab="Tempo", ylab="Mortes", 
  breaks=21,
  curve=(dnorm(x, mean=mean(ob2), sd = sd(ob2), add=T))
#Histograma dando a frequencia  dos Acumulados de Obitos.
#Deu erro, verificar depois

boxplot(covid_br_res[1:4], main="mediana de obitos e casos")
#Histograma dando a frequencia  dos Acumulados de Casos.

  ggplot(ob2) +
  aes(x=Cumulative_deaths) +
  geom_histogram(fill="red",
                  col="black",)
                  alpha=0.5,
                  bins=105) +
  stat_function(fun=dnorm, 
  args=list(mean=mean(ob2$Cumulative_deaths)),
  sd=sd(ob2$Cumulative_deaths))
  #Esta dando erro!