# Cadeias_Markov
O codigo disponibilizado tem as seguintes funções:

1- Absorvente(A), Descobre se algum estado na matriz é absorvente, e imprime na tela qual é.
2- Periodica(A), Verifica se a cadeia tem periodo, se tiver retorna qual  o periodo. 
3- EixoFixo(A, nh, E), Retorna o numero de transições necessarias para iniciar a distribuiço estacionaria. 
4- Estacionaria(A), Se existir uma distribuição estacionaria para a cadeia, esta função retorna, Uma matriz de autovetores(Q), uma matriz diagonal(T) e a inversa da matriz de autovetores(QI).
5- TransicaoD(Q,T,QI,t), Retorna a matriz que descreve os estados depois de t transições,mais eficiente que a proxima funções pois nao precisa fazer as mutiplicações 
6- Tansicao(A,t),Retorna a matriz que descreve os estados depois de t transições.


#####   LISTA DE VARIAVEIS ######

A = MATRIZ DE TRANSIÇÃO. 
nh = numero de passos que podem ser testados.
E = valor de aproximação.
t = numero de transições que devem ser feitas.
