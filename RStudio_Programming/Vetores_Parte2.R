'Vetores_2'

#Acessando uma parte de 1 vetor:
vector1
vector1[6]

#Vamos acessar +1 elem. e ver alguns elem.
vector2[c(1,6)] #Aqui vemos 2 elem. simultaneamente
vector2[c(-1,-6)] # Aqui vemos "Todos" os elem. exceto o 1* e o ultimo

#Como alterar as informacoes contidas em vetor
vector9
vector9[2] <- "Suj5"
vector9

#Vamos ocultar e excluir o conteudo de vetor:
vectorESC <- 1:7
vectorESC
# P/ ocultar o conteudo: 
vectorESC <- NULL
vectorESC
# P/ excluir o conteudo:
rm(vectorESC)
vectorESC
## o vetor acima nao sera encontrado;