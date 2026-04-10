Algoritmo "soma_vetores"

Var

   quantidadeEspacos, contagemIndices : inteiro
   
   vetorA : vetor[0..20] de real
   vetorB : vetor[0..20] de real
   vetorC : vetor[0..20] de real
   
Funcao pedirQuantidadeEspacos(): inteiro
Var
   quantidadeDigitada : inteiro
Inicio
   escreva("Quantidade de espaços dos 2 vetores: ")
   leia(quantidadeDigitada)
   retorne quantidadeDigitada
FimFuncao

Inicio
   quantidadeEspacos <- pedirQuantidadeEspacos()
   
   escreval()
   escreval()
   
   // Armazenamento de valores no VetorA
   escreval("VETOR A: ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      escreva("Digite o numero do espaço [", contagemIndices, "]: ")
      leia( vetorA[contagemIndices] )
   fimPara

   escreval()
   escreval()

   // Armazenamento de valores no VetorB
   escreval("VETOR B: ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      escreva("Digite o numero do espaço [", contagemIndices, "]: ")
      leia( vetorB[contagemIndices] )
   fimPara
   
   escreval()
   escreval()
   
   // Armazenamento de valores no VetorC ao mesmo tempo que a amostragem
   escreval("VETOR C (soma dos mesmos espaços de A e B): ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      vetorC[contagemIndices] <- vetorA[contagemIndices] + vetorB[contagemIndices]
      escreval("Espaço [", contagemIndices, "] = ", vetorC[contagemIndices], " (= ", vetorA[contagemIndices], " + ", vetorB[contagemIndices], ")")
   fimPara

   
Fimalgoritmo