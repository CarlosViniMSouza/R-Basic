#Vamos começar a analisar os dados dos 2 vetores que criamos nas 
#ultimas linhas do 'modelo_02.R'
#install.packages("ggplot2")

library(ggplot2)
library(esquisse)

#Vamos começar a plotar gráficos!
esquisser(covid_br_conf)
esquisser(covid_br_death)
#Forma mais rápida de gerar gráficos!

#Vejamos uma outra forma de plotar gráficos (biblioteca ggplot) :
ggplot(covid_br, aes(x=Date_reported, y=New_cases)) + 
  geom_point(aes(col=New_cases, size=Cumulative_cases)) +
  geom_smooth(method = "gam", se = F)
#Primeiro gráfico plotando com ggplot puro!