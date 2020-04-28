'Vetores'

vector1 <- 1:11
print(vector1)

# seq(from, to, by)
#from -> valor de inicio
#to -> valor final
#by -> valor de incremento

vector2 <- seq(from = 0, to = 10, by = 2)
vector2 # Mas,  podemos representar de outra forma:

vector3 <- seq(2,30,4)
vector3

# Vejamos um caso interessante:
vector4 <- seq(0,20,length.out = 30)
vector4 #length.out -> faz o interv. entre from e by ser  igualmente quebrado.

combine -> c() #combina os elementos que voce for colocando:
# Exemplo: c(1, 2, 4, 6, 8, 10, 20, 45, ...)
vector5 <- c(1, 2, 3, 4, 6)
vector5

#Outra forma de combinar elementos para compor um vetor:
vector6 <- 1:10
vector7 <- 11:15
vector8 <- c(vector6, vector7)
vector8

#A titulo de curiosidade:
vector9 <- c("Suj1", "Suj2", "Suj3", "Suj4")
vector9
typeof(vector9)
is.character(vector9) #Aqui o comando 'is.character()'
# diz se o objeto vector9 é um conjunto de caracteres

str(vector8) # dará o typeof, a quant. de elem. e os elem. em si
str(vector9) # dará o typeof, a quant. de elem. e os elem. em si

length(vector4) #diz o comprimento do vetor