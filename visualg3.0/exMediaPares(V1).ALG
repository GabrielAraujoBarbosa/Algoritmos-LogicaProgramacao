Algoritmo "media_pares"

Var
   quantidadeElementos, quantidadePares, contagemIndices : inteiro

   mediaPares : real

   vetorInteiros : vetor[0..99] de real
Inicio
   mediaPares <- 0
   quantidadePares <- 0

   escreval("***** VETOR DE NÚMEROS INTEIROS (MÉDIA PARES) *****")
   escreval()
   
   // Entrada da quantidade de elementos do vetor
   escreva("Quantidade de espaços do vetor: ")
   leia(quantidadeElementos)

   escreval()
   escreval()

   // Entrada dos Números Inteiros no Vetor e já análisando se é Par
   para contagemIndices de 0 ate (quantidadeElementos - 1) passo 1 faca
      escreva("Valor da posição [", contagemIndices, "]: ")
      leia(vetorInteiros[contagemIndices])
      
      se (vetorInteiros[contagemIndices] % 2 = 0) E (vetorInteiros[contagemIndices] <>  0) entao
         // Acúmulo(soma) dos números pares
         mediapares <- mediaPares + vetorInteiros[contagemIndices]
         quantidadePares <- quantidadePares + 1
      fimSe
   fimPara
   
   escreval()
   escreval()
   
   
   escreva("MÉDIA DOS PARES DO VETOR: ")
   // Análise se foi digitado par
   se quantidadePares > 0 entao
      // Média Aritmética dos Pares
      mediaPares <- mediaPares / quantidadePares
      escreval(mediaPares:3:1)
   senao
      escreval("Nenhum número par foi digitado!")
   fimSe
Fimalgoritmo