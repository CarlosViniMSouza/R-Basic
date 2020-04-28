'Matrizes'

# nome_matriz[m][n] -> 'm linhas' e 'n colunas'

vetorM <- 1:25
M <- matrix(vetorM, 5, 5)
M # Criamos uma matriz mxn de ordem 5

#Podemos fazer as 4 op. basicas com a matriz
#Sendo que cada op. sera aplicada em cada elemento:

M + 2
M - 2
M * 2
M / 2
M %% 2

#vamos criar outra matriz para trabalhar outras operacoes
vetorN <- 10:34
N <- matrix(vetorN, 5, 5)
N

#Operacoes entre matrizes:
M + N
M - N
M * N
M / N
M %% N
round(M / N, 2)
rowSums(M) #Somatorio em cada linha de M
rowSums(N) #Somatorio em cada linha de N
colSums(M) #Somatorio em cada coluna de M
colSums(N) #Somatorio em cada coluna de N

#vejamos como calcular a media em linhas e colunas:
rowMeans(M)
rowMeans(N)
colMeans(M)
colMeans(N)

#Forma de ver a Transposta de uma Matriz
t(M) #Transposta de M
t(N) #Transposta de N

#dimensoes da Matriz em questao:
dim(M)
dim(N)

#Calcular a inversa de uma Matriz:
solve(M)
solve(N)
# Nao calcula pq so suporta matrizes 3x3

# vamos criar outra matriz
O <- matrix(c(1,3,4,6,7,9,12,13,15), ncol=3)
O
solve(O)
round(solve(O), 2) # Arredondar para 2 casas;

#Agora sim foi possivel calcular a inversa!

#Calculando o determinante de uma matriz:
det(M)
det(N)
det(O)