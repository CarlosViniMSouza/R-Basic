"Leitura de dados do console e concatenacao de strings"

'paste() -> metodo para concatenar strings'
C <- "Carlos"
F <- "Souza"
paste(C, F)
G <- "Git"
H <- "Hub"
paste(G,H)
S <- readline("Digite o nome da sua rede Social favorita:")
print(S)

#Metodo para converter numeros caracteres em strings
number1 <- readline("Digite um numero:")
number2 <- as.integer(number1)
print(number2)
typeof(number2)