#1.Execute os comandos a seguir:
# a. Crie o seguinte vetor de caracteres
vet1 <- c("morder","correndo","dan�ar","comendo","dan�ando","amassar","dan�am","corro","dan�o")
print(vet1)

#b. Suponha que voc� queira saber qual � a propor��o de palavras derivadas do verbo "dan�ar" existem no vetor. Como voc� faria isso?
vetor1 <- grep("dan�",vet1, value = TRUE)
print(vetor1)
length(vetor1) / length(vet1)

#c. Fa�a o mesmo do item anterior, mas agora voc� quer saber a propor��o de palavras derivadas do verbo "correr".
vetor2 <- grep("corr",vet1, value = TRUE)
print(vetor2)
length(vetor2) / length(vet1)

#2. Crie o seguinte vetor e execute os comandos a seguir:
vet2 <- c("torre","garraf�o","careta","carro","moer","correnteza","core","churrasqueira","escorrega","chore","escore","cabo")
print(vet2)

#a. Armazene em um novo vetor as palavras que possuem a letra 'o', seguida de no m�nimo 1 'r', seguida da letra 'e'
novovetor <- grep("or+e",vet2,value = TRUE) # + � quantificador que significa 'pelo menos 1 vez'
print(novovetor)

#b. b. Armazene em um novo vetor as palavras que possuem 'rr' e terminam em 'o'
novovetor2 <- grep("rr|o$",vet2,value = TRUE) # | � um caractere para classes ou grupos que significa "ou"
novovetor3 <- grep("o$", novovetor2, value = TRUE) # $ � uma �ncora para indicar como a string termina. neste caso, com 'o'
novovetor4 <- grep("rr", novovetor3, value = TRUE)
print(novovetor4)

# c. Armazene em um novo vetor as palavras que cont�m at� uma letra 'r' (sem ser 'rr') e terminam em 'a'
novovetor5 <- grep("rr",vet2)  
novovetor6 <- vet2[-novovetor5]
novovetor7 <- grep("r", novovetor6, value = TRUE)
novovetor7 <- grep("a$", novovetor7, value = TRUE)
print(novovetor7)

# 3. Crie o seguinte vetor e execute os comandos a seguir:
vet3 <- c("3vezes","3_vezes","3 vezes","tr�s vezes","tr�s_vezes","tres vezes","tres_vezes","vezes3","vezes_3","vezes 3",3)
print(vet3)

#a. Armazene em um novo vetor os itens que possuem n�mero
novovetor8 <- grep("\\d",vet3, value = TRUE) # \\d == possuem n�mero
print(novovetor8)

# b. Armazene em um novo vetor os itens que possuem n�mero e espa�o
novovetor9 <- grep("\\s", novovetor8, value = TRUE) # \\s == possuem espa�o
print(novovetor9)

#c. Armazene em um novo vetor os itens que possuem n�mero no final e possuem algum sinal de pontua��o
novovetor10 <- grep("\\d$", vet3, value = TRUE)
novovetor10 <- grep("[[:punct:]]", novovetor10, value = TRUE) # [[:punct:]] == possuem algum sinal de pontua��o
print(novovetor10)

#d. Armazene em um novo vetor os itens que n�o possuem d�gito nem espa�o
novovetor11 <- grep("\\d|\\s", vet3)
novovetor12 <- vet3[-novovetor11]
print(novovetor12)