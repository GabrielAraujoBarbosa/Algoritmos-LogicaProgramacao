Algoritmo "soma_vetores"

Var

   quantidadeEspacos, contagemIndices : inteiro
   
   valorDigitado : real
   
   vetorUnico : vetor[0..20] de real
   
Funcao pedirQuantidadeEspacos(): inteiro
Var
   quantidadeDigitada : inteiro
Inicio
   escreva("Quantidade de espaços dos 2 vetores: ")
   leia(quantidadeDigitada)
   retorne quantidadeDigitada
FimFuncao

Inicio
   // Alterado exercício ao invés de ser usado 3 vetores foi trocado para apenas 1 (usando representações para usuário acreditar que são 3)
   // possui limitação de não poder recuperar valores digitados (acesso somente a soma)
   
   quantidadeEspacos <- pedirQuantidadeEspacos()
   
   escreval()
   escreval()
   
   // Armazenamento de valores da primeira digitação (Representação FICTÍCIA ao usuário de armazenamento de valores no 1º Vetor - VetorA)
   escreval("VETOR A: ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      escreva("Digite o numero do espaço [", contagemIndices, "]: ")
      leia( valorDigitado )
      vetorUnico[contagemIndices] <- valorDigitado
   fimPara

   escreval()
   escreval()

   // Armazenamento de valores da segunda digitação (Representação FICTÍCIA ao usuário de armazenamento de valores em outro Vetor - VetorB)
   escreval("VETOR B: ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      escreva("Digite o numero do espaço [", contagemIndices, "]: ")
      leia( valorDigitado )
      vetorUnico[contagemIndices] <- vetorUnico[contagemIndices] + valorDigitado
   fimPara
   
   escreval()
   escreval()
   
   // Armazenamento de valores no VetorC ao mesmo tempo que a amostragem
   escreval("VETOR C (soma dos mesmos espaços de A e B): ")
   para contagemIndices de 0 ate (quantidadeEspacos - 1) passo 1 faca
      escreval("Espaço [", contagemIndices, "] = ", vetorUnico[contagemIndices])
   fimPara

   
Fimalgoritmo